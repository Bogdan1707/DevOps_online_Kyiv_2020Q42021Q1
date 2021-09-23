terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.83.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)

  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_network" "vpc_network" {
  project                 = var.project
  name                    = "terraform-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnetwork"{
  name          = "terraform-subnetwork"
  ip_cidr_range = "10.128.0.0/28"
  region        = var.region
  network       = google_compute_network.vpc_network.id
}

resource "google_service_account" "service_account" {
  account_id   = "service-account-terraform"
  display_name = "Service Account Terraform"
}

resource "google_compute_instance_template" "default" {
  name         = "lamp-template"
  description  = "For creating MIG with LAMP stack"
  
  tags         = ["ssh", "http-server"]
  
  machine_type = var.machine_type

  network_interface {
    network = google_compute_network.vpc_network.self_link
    subnetwork = google_compute_subnetwork.subnetwork.self_link

    access_config {
      
    }
  }

  disk {
    source_image = "debian-cloud/debian-9"
  }
  metadata = {
    startup-script-url = "gs://bucket111/startup.sh"
  }
}
  
data "google_compute_image" "default" {
  family  = "debian-9"
  project = "debian-cloud"
}
 
resource "google_compute_health_check" "autohealing" {
  name                = "autohealing-health-check"
  check_interval_sec  = 5
  timeout_sec         = 5
  healthy_threshold   = 2
  unhealthy_threshold = 10

  http_health_check {
    request_path = "/healthz"
    port         = "8080"
  } 
}

resource "google_compute_instance_group_manager" "lamp-server" {
  name               = "lamp-server"

  base_instance_name = "app"

  zone               = var.zone
  target_size        = 2

  version {
    instance_template = google_compute_instance_template.default.id
  }
  
}
# object depends on bucket, source local folder

resource "google_storage_bucket" "bucketstorage12" {
  name          = "bucketstorage12"
  location      = "US"
  storage_class = "STANDARD"
}

resource "google_storage_bucket_object" "html" {
  name    = "index.html"
  source  = "config/index.html"
  bucket = google_storage_bucket.bucketstorage12.name
  depends_on = [
    google_storage_bucket.bucketstorage12
  ]
}

resource "google_storage_bucket_object" "startup" {
  name    = "startup.sh"
  source  = "config/startup.sh"
  bucket = google_storage_bucket.bucketstorage12.name
  depends_on = [
    google_storage_bucket.bucketstorage12
  ]
}

resource "google_sql_database" "database" {
  name     = "database1"
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  name                 = "my-database-instance"
  region               = var.region
  settings {
    tier               = "db-f1-micro"
    backup_configuration {
      enabled          = true
    }
  }
  database_version     = "MYSQL_5_6"

}
# router -> nat -> IP  

resource "google_compute_router" "default" {
  name    = "router1"
  network = google_compute_network.vpc_network.self_link
  region  = var.region
  bgp {
    asn   = 64514
  }
}

resource "google_compute_router_nat" "nat" {
  name = "nat1"
  router = google_compute_router.default.name
  region = var.region
  nat_ip_allocate_option = "MANUAL_ONLY"
  nat_ips = [google_compute_address.address.self_link]
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  depends_on = [
    google_compute_address.address
  ]
  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }
}

resource "google_compute_address" "address" {
  name   = "nat-ip"
  region = google_compute_router.default.region
}

module "gce-lb-http" {
  source   = "GoogleCloudPlatform/lb-http/google"
  version  = "~> 4.4"

  project = var.project
  name    = "group-http-lb"

  backends = {
    default = {
      description = "Backend http lb"
      protocol    = "HTTP"
      port        = 80
      port_name   = "http"
      timeout_sec = 10
      connection_draining_timeout_sec = null 
      enable_cdn = false 

      custom_request_headers  = null
      custom_response_headers = null
      security_policy         = google_compute_security_policy.lb-policy.name

      connection_draining_timeout_sec = null
      session_affinity                = null
      affinity_cookie_ttl_sec         = null

      health_check = {
        check_interval_sec = 60
        timeout_sec        = 5 
        healthy_threshold  = 1 
        unhealthy_threshold= 3
        request_path       = "/"
        port               = 80
        host               = null
        logging            = true
      }

       log_config = {
        enable = true
        sample_rate = 1.0
      }

      groups = [
        {
          group                        = google_compute_instance_group_manager.lamp-server.self_link
          balancing_mode               = "UTILIZATION"
          capacity_scaler              = 1
          description                  = "HTTP for lamp-server"
          max_connections              = null
          max_connections_per_instance = null
          max_connections_per_endpoint = null
          max_rate                     = null
          max_rate_per_instance        = null
          max_rate_per_endpoint        = null
          max_utilization              = 1
        }
      ]
      iap_config = {
        enable               = false
        oauth2_client_id     = null
        oauth2_client_secret = null
      }
    }
  }
  depends_on = [
    google_compute_instance_group_manager.lamp-server
  ]
}

resource "google_compute_security_policy" "lb-policy" {
  name = "lb-policy"

  rule {
    action = "deny(403)"
    priority = "1000"
    match {
      versioned_expr = "SRC_IPS_V1" 
      config {
        src_ip_ranges = ["1.2.3.4/32"]
      } 
    }
    description = "Deny access"
  }

  rule {
    action   = "allow"
    priority = "2147483647"
    match {
      versioned_expr = "SRC_IPS_V1"
      config {
        src_ip_ranges = ["*"]
      }
    }
    description = "default rule"
  }

}
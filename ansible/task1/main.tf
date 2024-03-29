terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
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

resource "google_service_account" "default" {
  account_id   = "service-account-id"
  display_name = "Service Account"
}

data "google_compute_image" "linux" {
  family  = "ubuntu-2004-lts"
  project = "ubuntu-os-cloud"
}

data "google_compute_image" "debian" {
  family  = "debian-10"
  project = "debian-cloud"
}

resource "google_compute_instance" "default1" {
  name         = "nginx-webserver-1"
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = data.google_compute_image.linux.self_link
    }
  }

  network_interface {
    network = "default"
    access_config {

    }
  }

  provisioner "remote-exec" {
    inline = ["echo 'Hello world!'"]
    connection {
      type        = "ssh"
      host        = self.network_interface.0.access_config.0.nat_ip
      user        = "bohdan"
      private_key = file(var.ssh_key_private)
    }
  }
  provisioner "local-exec" {
    command = "ansible-playbook  -i '${self.network_interface.0.access_config.0.nat_ip},' nginxweb.yml"
  }

  service_account {
    email = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}

resource "google_compute_instance" "default2" {
  name         = "nginx-webserver-2"
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = data.google_compute_image.debian.self_link
    }
  }

  network_interface {
    network = "default"
    access_config {

    }
  }
  provisioner "remote-exec" {
    inline = ["echo 'Hello world!'"]
    connection {
      type        = "ssh"
      host        = self.network_interface.0.access_config.0.nat_ip
      user        = "bohdan"
      private_key = file(var.ssh_key_private)
    }
  }
  provisioner "local-exec" {
    command = "ansible-playbook -i '${self.network_interface.0.access_config.0.nat_ip},' nginxweb.yml"
  }
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}

resource "google_compute_instance" "default3" {
  name         = "nginx-load-balancer"
  machine_type = "e2-medium"
  zone         = var.zone

  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = data.google_compute_image.linux.self_link
    }
  }

  network_interface {
    network = "default"
    access_config {

    }
  }
  provisioner "remote-exec" {
    inline = ["echo 'Hello world!'"]
    connection {
      type        = "ssh"
      host        = self.network_interface.0.access_config.0.nat_ip
      user        = "bohdan"
      private_key = file(var.ssh_key_private)
    }
  }
  provisioner "local-exec" {
    command = "ansible-playbook -i '${self.network_interface.0.access_config.0.nat_ip},' -e 'server1=${resource.google_compute_instance.default1.network_interface.0.access_config.0.nat_ip} server2=${resource.google_compute_instance.default2.network_interface.0.access_config.0.nat_ip}'  lb.yml"
  }
  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}

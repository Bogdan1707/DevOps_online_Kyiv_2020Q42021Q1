terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
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

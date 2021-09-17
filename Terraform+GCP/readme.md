# Terraform + GCP task
### Bohdan Fedorov
Hello! Here is a picture that describes service I should create on GCP using Terraform <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/Terraform+GCP/images/1.png?raw=true) <br>
1. Create Network and private subnetwork <br>
Firstly I installed Terraform localy and initialized it. Then created local repository with project. <br>
There are <b>main.tf, outputs.tf,terraform.tfvars, variables.tf</b> and files with credentials to connect to GCP.<br>
![](2.png) <br>
Code form <b>main.tf</b> in this step (creating VPC and subnet) <br>
```
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
```
Code from <b>variables.tf</b> <br>
```
variable "project" { }
variable "credentials_file" { }
variable "region" {
  default = "us-central1"
}
variable "zone" {
  default = "us-central1-c"
}
```
Code from <b>terraform.tfvars</b> <br>
```
project           = "composed-task-321415"
credentials_file  = "C:/Users/Bohdan_Fedorov/learn-terraform-gcp/credentials/composed-task-321415-0efb5a6e59db.json"
```
Code from <b>outputs.tf</b> <br>
```
output "network" {
  value       = google_compute_network.vpc_network.name
  description = "If you see that message, you are still alive)"
}
```
To be continued:)) <br>
![](3.jpj)

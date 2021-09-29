variable "project" { }

variable "credentials_file" { }

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}

variable "machine_type" {
  default = "n1-standard-1"
}

variable "ssh_key_private" {
  default = ""
}

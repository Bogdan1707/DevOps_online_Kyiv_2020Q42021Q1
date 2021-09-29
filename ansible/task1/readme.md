# Task 1
### Creating Linux VMs using Ansible as provisioner in Terraform
Here is the output of created VMs <br>
VM1 <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/ansible/task1/images/1.png)<br>
VM2 <br>
![](https://github.com/Bogdan1707/DevOps_online_Kyiv_2020Q42021Q1/blob/main/ansible/task1/images/2.png)<br>
VM3 is kind of Load Balancer, so it directs traffic to my VMs by turns<br>

#### Configuration description
***main.tf*** file describes infrastructure (3 VMs) creating, using ubuntu and debian images, and configuration of VMs with Ansible <br>
Here is a part of code with images and 1 VMs configuration <br>
```
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
#describing images
data "google_compute_image" "linux" {
  family  = "ubuntu-2004-lts"
  project = "ubuntu-os-cloud"
}

data "google_compute_image" "debian" {
  family  = "debian-10"
  project = "debian-cloud"
}

#creating VM
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
```
***lb.yml*** playbook describes task for creating lb service
```
---
- name: Configure load-balancer
  hosts: all
  become: yes

  vars:
    source_file: /home/bohdan/ansible/default.j2
    destin_folder: /etc/nginx/sites-available

  tasks:
  - name: update packages
    apt:
      update_cache: yes
      force_apt_get: yes

  - name: Install nginx
    apt:
      name: nginx
      state: latest

  - name: generate default file
    template: src={{source_file}} dest={{destin_folder}}/default
    notify: restart nginx

  handlers:
  - name: restart nginx
    service: name=nginx state=restarted
```
***nginxweb.yml*** playbook describes task for installation nginx on VMs
```
---
- name: Configure webserver
  hosts: all
  become: yes

  vars:
    source_file: /home/bohdan/ansible/index.j2
    destin_folder: /var/www/html

  tasks:
  - name: ping server
    ping:

  - name: update
    apt:
      update_cache: yes
      force_apt_get: yes

  - name: install Nginx
    apt:
     name: nginx
     state: latest

  - name: generate index.html
    template: src={{ source_file }} dest={{ destin_folder }}/index.html
    notify: restart nginx

  handlers:
  - name: restart nginx
    service: name=nginx state=restarted
```
***index.j2*** contains html markup that shows data on every VM via HTML request
```
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Ansible</title>
  </head>
  <body>
    <p>Hello from Terraform + Ansible</p>
    <p>This machine is {{ ansible_hostname }} running {{ ansible_distribution }} {{ ansible_distribution_version }}</p>
    <p>Ip address: {{ ansible_default_ipv4.address }}</p>

  </body>
</html>
```
***default.j2*** describes backend configuration of LB
```
upstream backend {
        server {{ server1 }};
        server {{ server2 }};
    }

    server {
        listen 80;

        location / {
            proxy_pass http://backend;
        }
    }
```
***ansible.cfg*** is a config file of Ansible <br>
***variables.tf*** and ***terraform.tfstate*** are var file for TF<br>

#!/bin/bash
sudo apt update
sudo apt install apache2
sudo ufw allow 'Apache'
sudo gsutill cp gs://bucket1/index.html /var/www/html/

#!/bin/bash
# sudo groupadd docker
# sudo usermod -aG docker $USER
# newgrp docker
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

sudo rm /opt/pyth/ --force --recursive && sudo git clone https://github.com/hachubra/shvirtd-example-python.git /opt/pyth && docker compose -f /opt/pyth/compose.yml up -d

#!/bin/bash

echo "setup stage"
sudo -s apt-get update
sudo -s apt-get install -y curl jq

sudo -s curl https://get.docker.com | sudo bash
sudo -s usermod -aG docker jenkins

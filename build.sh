#!/bin/bash

echo "build app..."

cd /home/jenkins/.jenkins/workspace/qa-project

sudo chown "$USER":"$USER" /var/run/docker.sock -R
sudo chmod g+rwx "/var/run/docker.sock" -R

docker build -t myapp .

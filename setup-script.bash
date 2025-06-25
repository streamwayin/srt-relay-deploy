#!/bin/bash

sudo apt update
sudo apt install docker.io docker-compose -y 
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

docker-compose up -d

echo "Check the server on Port 2222"
echo "User for Publishing - srt://{host-ip}}:2222?streamid=publish/test"
echo "And for playback - srt://{host-ip}:2222?streamid=play/test"
#!/bin/bash

echo 'Building..'
docker build -t minecraft-server .

echo 'Removing old container...'
docker stop minecraft-server
docker rm minecraft-server

echo 'Starting...'
docker run --name minecraft-server -v /server:/server -itd -p 25565:25565 --restart always minecraft-server
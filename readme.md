# Minecraft Docker Container

## Instructions

1) Clone this repo to docker host
2) Create /server directory on docker host
3) Download minecraft server jar (https://www.minecraft.net/en-us/download/server/) to /server
4) Copy `eula.txt` to /server
5) Copy `server.properties` to /server
6) Invoke run.sh

** You can preemptively create the required eula.txt file. Otherwise run.sh will fail the first time, at which point you will need to go to the docker host's /server directory and update it accordingly. **


## Requirements
- Docker host

FROM ubuntu:latest

# install stuff
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install -y software-properties-common

# install jdk 8
RUN apt-get install -y openjdk-8-jdk-headless

VOLUME [ "/server" ]
WORKDIR /server

EXPOSE 25565/tcp
EXPOSE 25565/udp

CMD ["java", "-jar","server.jar","nogui"]
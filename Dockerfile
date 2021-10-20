FROM ubuntu:latest

# install stuff
RUN apt update && apt-get install -y apt-transport-https
RUN apt install -y software-properties-common

# install jdk 8
RUN apt install -y openjdk-17-jre

VOLUME [ "/server" ]
WORKDIR /server

EXPOSE 25565/tcp
EXPOSE 25565/udp

CMD ["java", "-jar","server.jar","nogui"]

FROM ubuntu:latest

# install stuff
RUN apt update && apt-get install -y apt-transport-https
RUN apt install -y software-properties-common

# install jdk 17
RUN apt install -y openjdk-17-jre

VOLUME [ "/server" ]
WORKDIR /server

EXPOSE 25565/tcp
EXPOSE 25565/udp

ENTRYPOINT ["java", "-Xms1G", "-Xmx4G", "-jar", "server.jar", "nogui"]

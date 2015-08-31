FROM ubuntu
MAINTAINER devinkong "kdf5000@163.com"

RUN apt-get update
RUN apt-get install -y redis-server
RUN apt-get install -y openssh-server

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["redis-server"]

EXPOSE 6379
EXPOSE 22
 

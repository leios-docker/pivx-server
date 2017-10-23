# Pull base image.
FROM ubuntu:16.04

ADD files/pivx-3.0.2-x86_64-linux-gnu.tar.gz /root/

ENV PATH $PATH:/root/pivx-3.0.2/bin

# Define mountable directories.
VOLUME ["/root/.pivx/"]

# Define working directory.
WORKDIR /root/.pivx

COPY files/init.sh /init.sh

# Define default command.
CMD ["/init.sh"]

# Expose ports.
EXPOSE 51472

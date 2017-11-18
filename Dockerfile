# Pull base image.
FROM ubuntu:16.04

ENV PIVX_VERSION 3.0.5
ADD files/pivx-${PIVX_VERSION}-x86_64-linux-gnu.tar.gz /root/

ENV PATH $PATH:/root/pivx-${PIVX_VERSION}/bin

# Define mountable directories.
VOLUME ["/root/.pivx/"]

# Define working directory.
WORKDIR /root/.pivx

COPY files/init.sh /init.sh

# Define default command.
CMD ["/init.sh"]

# Expose ports.
EXPOSE 51472

FROM phusion/baseimage:0.9.13

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init process
CMD ["/sbin/my_init"]

# Create a user for statsd
RUN useradd statsd -d /home/statsd

# Install global dependencies
RUN apt-get update
# TODO: Merge the next two lines.
RUN apt-get install -y nodejs npm
RUN apt-get install -y git

# Install StatsD
RUN mkdir /home/statsd && git clone https://github.com/etsy/statsd.git /home/statsd && cd /home/statsd && git checkout v0.7.2

# Setup StatsD to run on start.
ADD run_statsd.sh /etc/service/statsd/run
RUN chmod +x /etc/service/statsd/run

ADD config.js /home/statsd/config.js

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Disable SSH
# TODO: Move this nearer the start.
RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

EXPOSE 8125/udp

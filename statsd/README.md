This folder contains the source for obmarg/statsd - a docker image that
runs a statsd server.

#### Use

Docker statsd is intended for use as a base image.  You should provide a
Dockerfile that uses this image in it's FROM statement, then ADDs your own
configuration file.  For example:

    FROM obmarg/statsd

    ADD myConfig.js /home/statsd/config.js

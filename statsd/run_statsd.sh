#!/bin/sh
exec /sbin/setuser statsd /usr/bin/nodejs /home/statsd/stats.js /home/statsd/config.js

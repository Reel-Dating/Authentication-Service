#!/bin/bash
# run as root and in this files same directory.
# This script will refresh nginx configuration
# and restart nginx service

# Fetching confing from config directory:
NGINX_CONF=$(dirname $(pwd))/service_discovery/ngnix_dev.conf

# Kill nginx process:
killall nginx

# update config:
nginx -t -c $NGINX_CONF

# start nginx:
nginx -c $NGINX_CONF

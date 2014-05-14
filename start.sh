#!/bin/bash

HOST="npm.localhost"

# normalize the working dir to the directory of the script
cd $(dirname $0);SCRIPT_DIR=$(pwd)

# interpolate pwd into the template
sed -e "s#{{pwd}}#`pwd`#g" \
    -e "s#{{host}}#$HOST#g" \
    nginx.template.conf > nginx.conf

# start nginx
./nginx-1.6.0/objs/nginx -c $SCRIPT_DIR/nginx.conf

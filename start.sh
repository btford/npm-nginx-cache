#!/bin/bash

HOST="npm.whatever.com"

# normalize the working dir to the directory of the script
cd $(dirname $0);SCRIPT_DIR=$(pwd)

# interpolate pwd into the template
sed -e "s#{{pwd}}#`pwd`#g" \
    -e "s#{{host}}#$HOST#g" \
    nginx.template.conf > nginx.conf

# start nginx
#nginx -c `pwd`/nginx.conf

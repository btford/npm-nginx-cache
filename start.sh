#!/bin/bash

# normalize the working dir to the directory of the script
cd $(dirname $0);SCRIPT_DIR=$(pwd)

# interpolate pwd into the template
sed "s#{{pwd}}#`pwd`#g" nginx.template.conf > nginx.conf

# start nginx
nginx -c `pwd`/nginx.conf

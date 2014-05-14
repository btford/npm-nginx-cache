#!/bin/bash

set -e

# normalize the working dir to the directory of the script
cd $(dirname $0);SCRIPT_DIR=$(pwd)

wget http://nginx.org/download/nginx-1.6.0.tar.gz
tar -xvzf nginx-1.6.0.tar.gz

#git clone git://github.com/yaoweibin/ngx_http_substitutions_filter_module.git


cd nginx-1.6.0/
./configure --add-module=$SCRIPT_DIR/ngx_http_substitutions_filter_module --with-cc-opt="-Wno-deprecated-declarations"
make


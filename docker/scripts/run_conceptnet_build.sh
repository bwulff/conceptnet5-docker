#!/bin/bash

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

cd /opt/conceptnet5
sh build.sh

#echo "Testing build"
#pip3 install pytest PyLD
#pytest --fulldb


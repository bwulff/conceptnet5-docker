#!/bin/bash

cd /opt/conceptnet5
pip install -e '.[vectors]'
sh build.sh

echo "Testing Conceptnet-5 build"
pip install pytest PyLD
pytest --fulldb


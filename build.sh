#!/bin/bash
set -eu
cd `dirname $0`

mkdir -p packages

docker build -t apkbuilder .
docker run -v $PWD/aports/:/src -v $PWD/packages:/packages --rm apkbuilder /bin/sh -c 'cd /src/rocksdb; abuild -Fr -P /packages'

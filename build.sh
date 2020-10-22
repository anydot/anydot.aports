#!/bin/bash
set -eu
set -o pipefail 

cd `dirname $0`

mkdir -p repo

docker build -t apkbuilder .
docker run -e ALPINEREPOKEY -v $PWD/main:/main -v $PWD/repo:/repo --rm apkbuilder /main/build.sh

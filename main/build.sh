#!/bin/sh
set -eu
set -o pipefail

cd `dirname $0`

SIGNING_KEYFILE=$PWD/alpine-repo.anydot.in

echo "$ALPINEREPOKEY" > $SIGNING_KEYFILE

mkdir -p ~/.abuild
echo "PACKAGER_PRIVKEY=$SIGNING_KEYFILE" >> ~/.abuild/abuild.conf

for pkg in */; do
    cd $pkg
    abuild -Fr -P /repo
    cd -
done

rm -f $SIGNING_KEYFILE
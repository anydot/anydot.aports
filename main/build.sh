#!/bin/sh
set -eu
set -o pipefail

cd `dirname $0`

echo "$ALPINEREPOKEY" > signing-key

mkdir -p ~/.abuild
echo "PACKAGER_PRIVKEY=$PWD/signing-key" >> ~/.abuild/abuild.conf

for pkg in */; do
    cd $pkg
    abuild -Fr -P /repo
    cd -
done

rm -f signing-key
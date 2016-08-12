#!/bin/sh
BASEDIR=`dirname $0`
. $BASEDIR/_common.sh

if [ ! -f $OUTPUT_DIR/bundle/main.js ]; then
  echo "[!] There is no application bundle. Please see usage docs here: https://github.com/chriswessels/meteor-tupperware"
  exit 1
fi





echo "[-] meteor-tupperware is starting your application with NODE_ENV=$NODE_ENV and METEOR_ENV=$METEOR_ENV..."
node $OUTPUT_DIR/bundle/main.js
#!/bin/sh

ember cordova:prepare;

set -e

cd cordova;
sudo npm install;
sudo cordova platform add android;
cd ..;

if [ $TRAVIS_BRANCH = 'master' ]; then
  sudo ember cordova:build --environment=production --platform=android;
else
  sudo ember cordova:build --environment=development --platform=android;
fi

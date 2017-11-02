#!/bin/sh

ember cordova:prepare;

set -e;

pushd cordova;
npm install;
cordova platform add ios;
popd;

if [ $TRAVIS_BRANCH = 'master' ]; then
  sudo ember cordova:build --environment=production;
else
  sudo ember cordova:build --environment=development;
fi

#!/bin/sh
pushd cordova;
cordova platform add ios;
popd;

if [ $TRAVIS_BRANCH = 'master' ]; then
  sudo ember cordova:build --environment=production;
else
  sudo ember cordova:build --environment=development;
fi

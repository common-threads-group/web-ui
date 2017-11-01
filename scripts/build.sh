#!/bin/sh
cd cordova;
cordova platform add ios;
cd ..;

if [ $TRAVIS_BRANCH = 'master' ]; then
  sudo ember cordova:build --environment=production;
else
  sudo ember cordova:build --environment=development;
fi

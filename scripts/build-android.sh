#!/bin/sh
pushd cordova;
sudo npm install;
sudo cordova platform add android;
popd;

if [ $TRAVIS_BRANCH = 'master' ]; then
  sudo ember cordova:build --environment=production --platform=android;
else
  sudo ember cordova:build --environment=development --platform=android;
fi

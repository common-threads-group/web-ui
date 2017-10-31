#!/bin/sh

if [ $TRAVIS_BRANCH = 'master' ]; then
  echo "ember build --environment=production";
  ember ember cordova:build --environment=production;
else
  echo "ember build --environment=development"
  ember ember cordova:build --environment=development;
fi

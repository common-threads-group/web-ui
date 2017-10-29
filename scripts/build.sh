#!/bin/sh

if [ $TRAVIS_BRANCH = 'master' ]; then
  echo "ember build --environment=production";
  ember build --environment=production;
else
  echo "ember build --environment=development"
  ember build --environment=development;
fi

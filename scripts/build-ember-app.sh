#!/bin/sh

if [ $TRAVIS_BRANCH = 'master' ]; then
  sudo ember build --environment=production;
else
  sudo ember build --environment=development;
fi
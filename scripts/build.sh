#!/bin/sh

if [[ $TRAVIS_BRANCH = 'master' ]]; then
  ember build --environment=production;
else
  ember build --environment=development;
fi

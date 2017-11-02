#!/bin/sh

brew update;
brew install yarn ios-sim jq ios-deploy cocoapods;
rvm use system;
pod setup;
nvm install 8;
yarn global add ionic cordova;
npm install -g ember-cli;
npm install;

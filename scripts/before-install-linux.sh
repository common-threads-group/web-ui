#!/bin/sh

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -;
sudo apt-get install -y nodejs;
sudo chmod 777 /usr/bin;
sudo yarn global add ionic cordova;
sudo npm install -g ember-cli;
sudo yarn install;

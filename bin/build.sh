#!/bin/bash

# build
chown nodeuser:nodeuser -R /app
cd /app
su nodeuser -c -l "npm install grunt-cli --save -g"
su nodeuser -c -l "npm install bower --save -g"
su nodeuser -c -l "npm install"
su nodeuser -c -l "bower install"
su nodeuser -c -l "grunt build"

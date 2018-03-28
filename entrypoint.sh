#!/bin/bash

# Install your NPM dependencies
if [ -f "yarn.lock" ]; then
  yarn install
else
  npm install
fi

# If bower.json exists then do a bower install
if [ -f "bower.json" ]; then
  bower install
fi

ember server
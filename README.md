## Supported tags and respective `Dockerfile` links

+ `0.1.14` (ember-cli 0.1.14)

## Inspiration
This image is based on the image: geoffreyd/ember-cli

## Dependencies
+ Make sure you have rvm installed for automatic command aliasing.  

## General Use Commands
When cd'ing into the project directory tree in your local workstation's terminal app, rvm will automagically notice that you have switched to the project and setup the following general use commands.
+ npm
+ bower
+ ember

If you don't have rvm installed then you may manually execute '. setup.sh' from the project root directory before using any of the general use commands.

All of these commands run with the working directory set to the project root directory.  All commands execute within a docker container.

## Service Commands

To start the services, simply execute the regular fig up command.

+ fig up

This will start the ember-cli server watching for file changes and refreshing the browser.  The webapp can be accessed at the IP identified via 'boot2docker ip' on port 4200 using your workstations browser.

## How to create a new project

This ember-cli-docker-template starts out with only the following files:
+ .rvmrc
+ fig-dev.yml
+ fig.yml
+ setup.md
+ setup.sh

Starting with these initial files, execute the following commands to create a new ember.js project.

1. make sure 'boot2docker up' has been executed.
2. Rename the project root directory to whatever you want for a project name. 
3. cd into that project directory.
4. Do an 'ember init' to create a new ember project in the current project dir.

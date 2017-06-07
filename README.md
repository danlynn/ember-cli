This image contains everything you need to have a working development environment for ember-cli.  The container's working dir is /myapp so that you can setup a volume mapping your project dir to /myapp in the container.

![stars](https://img.shields.io/docker/stars/danlynn/ember-cli.svg) ![pulls](https://img.shields.io/docker/pulls/danlynn/ember-cli.svg) ![automated](https://img.shields.io/docker/automated/danlynn/ember-cli.svg) ![automated](https://img.shields.io/docker/build/danlynn/ember-cli.svg)

### Supported tags and respective `Dockerfile` links

+ [`2.13.2`,`latest` (2.13.2/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.13.2/Dockerfile)
+ [`2.13.2-node_6.10` (2.13.2-node_6.10/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.13.2-node_6.10/Dockerfile)
+ [`2.13.1` (2.13.1/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.13.1/Dockerfile)
+ [`2.13.1-node_6.10` (2.13.1-node_6.10/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.13.1-node_6.10/Dockerfile)
+ [`2.12.2` (2.12.2/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.12.2/Dockerfile)
+ [`2.12.2-node_6.10` (2.12.2-node_6.10/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.12.2-node_6.10/Dockerfile)
+ [`2.12.1` (2.12.1/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.12.1/Dockerfile)
+ [`2.12.1-node_6.10` (2.12.1-node_6.10/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.12.1-node_6.10/Dockerfile)
+ [`2.12.0` (2.12.0/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.12.0/Dockerfile)
+ [`2.12.0-node_6.10` (2.12.0-node_6.10/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.12.0-node_6.10/Dockerfile)
+ [`2.11.1` (2.11.1/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.11.1/Dockerfile)
+ [`2.11.1-node_6.10` (2.11.1-node_6.10/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.11.1-node_6.10/Dockerfile)
+ [`2.11.0` (2.11.0/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.11.0/Dockerfile)
+ [`2.11.0-node_6.9` (2.11.0-node_6.9/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.11.0-node_6.9/Dockerfile)
+ [`2.10.1` (2.10.1/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.10.1/Dockerfile)
+ [`2.10.1-node_6.9` (2.10.1-node_6.9/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.10.1-node_6.9/Dockerfile)
+ [`2.10.0` (2.10.0/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.10.0/Dockerfile)
+ [`2.10.0-node_6.9` (2.10.0-node_6.9/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.10.0-node_6.9/Dockerfile)
+ [`2.9.1` (2.9.1/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.9.1/Dockerfile)
+ [`2.9.1-node_6.9` (2.9.1-node_6.9/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.9.1-node_6.9/Dockerfile)
+ [`2.8.0` (2.8.0/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.8.0/Dockerfile)
+ [`2.7.0` (2.7.0/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.7.0/Dockerfile)
+ [`2.6.3` (2.6.3/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.6.3/Dockerfile)
+ [`2.6.2` (2.6.2/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.6.2/Dockerfile)
+ [`2.6.1` (2.6.1/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.6.1/Dockerfile)
+ [`2.5.1` (2.5.1/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.5.1/Dockerfile)
+ [`2.5.0` (2.5.0/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.5.0/Dockerfile)
+ [`2.4.3` (2.4.3/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.4.3/Dockerfile)
+ [`2.4.2` (2.4.2/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.4.2/Dockerfile)
+ [`2.3.0` (2.3.0/Dockerfile)](https://github.com/danlynn/ember-cli/blob/2.3.0/Dockerfile)
+ [`1.13.15` (1.13.15/Dockerfile)](https://github.com/danlynn/ember-cli/blob/1.13.15/Dockerfile)
+ [`1.13.14` (1.13.14/Dockerfile)](https://github.com/danlynn/ember-cli/blob/1.13.14/Dockerfile)
+ [`1.13.13` (1.13.13/Dockerfile)](https://github.com/danlynn/ember-cli/blob/1.13.13/Dockerfile)
+ [`1.13.8` (1.13.8/Dockerfile)](https://github.com/danlynn/ember-cli/blob/1.13.8/Dockerfile)
+ [`1.13.1` (1.13.1/Dockerfile)](https://github.com/danlynn/ember-cli/blob/1.13.1/Dockerfile)


This image was originally based on: [geoffreyd/ember-cli](https://registry.hub.docker.com/u/geoffreyd/ember-cli/) (hat tip)

`ember-cli 2.13.2 + node 4.8.2/6.10.2 + npm 2.15.11/3.10.10 + bower 1.8.0 + phantomjs 2.1.7 + watchman 3.5.0`

![ember-cli logo](https://raw.githubusercontent.com/danlynn/ember-cli/master/logo.png)

### Important Change in ember-cli:2.11.1

As of ember-cli:2.11.1, ember-cli livereload listens on port 49153 by default insteadof 49152.  Dockerfile now exposes 49153.

### Important Change in ember-cli:2.10.0

As of ember-cli:2.10.0, this image has changed its `ENTRYPOINT` to the docker convention of `/bin/sh -c`.  This means that if you have any shell scripts which assume the previous `ENTRYPOINT` of `/usr/local/bin/ember` then you will need to update them.  The default CMD is now `ember server` which means that the syntax for most critical action of launching the server is unchanged.  However, other actions may need to be updated.

#### Example Changes To Common Actions

Launch ember server (unchanged):

```
OLD: $ docker run -ti --rm -v $(pwd):/myapp -p 4200:4200 -p 49153:49153 danlynn/ember-cli:2.9.1
NEW: $ docker run -ti --rm -v $(pwd):/myapp -p 4200:4200 -p 49153:49153 danlynn/ember-cli:2.13.2

```

Run ember tests:

```
OLD: $ docker run -ti --rm -v $(pwd):/myapp danlynn/ember-cli:2.9.1 test
NEW: $ docker run -ti --rm -v $(pwd):/myapp danlynn/ember-cli:2.13.2 ember test
```

Launch bash shell:

```
OLD: $ docker run -ti --rm -v $(pwd):/myapp --entrypoint=/bin/bash danlynn/ember-cli:2.9.1
NEW: $ docker run -ti --rm -v $(pwd):/myapp danlynn/ember-cli:2.13.2 bash
```


### How to use

Setup a project to use this container via [docker-compose](https://www.docker.com/products/docker-compose).  docker-compose is part of the all-in-one [docker-toolbox](https://www.docker.com/products/overview#/docker_toolbox) which is the easiest way to get up and running with docker.

1. Create new project dir and add a docker-compose.yml file similar to the following:

   ```
   ember: &defaults
     image: danlynn/ember-cli:2.13.2
     volumes:
       - .:/myapp

   npm:
     <<: *defaults
     command: npm

   bower:
     <<: *defaults
     command: bower --allow-root

   server:
     <<: *defaults
     command: server --watcher polling
     ports:
       - "4200:4200"
       - "49153:49153"
   ```

2. Make sure that your docker-machine is already running:

	```
	$ docker-machine start default
	```
	
	Or, if you haven't created one yet:
	
	```
	$ docker-machine create --driver virtualbox default
	```

2. Create an ember app in the current dir:

	```
	$ docker-compose run --rm ember init
	```

3. Start the ember server:

   ```
   $ docker-compose up
   ```

   This launches the ember-cli server on port 4200 in the docker container. As you make changes to the ember webapp files, they will automagically be detected and the associated files will be recompiled and the browser will auto-reload showing the changes.
   
   Note that if you get an error something like
   
   ```
   server_1 | Error: A non-recoverable condition has triggered.  Watchman needs your help!
   server_1 | The triggering condition was at timestamp=1450119416: inotify-add-watch(/myapp/node_modules/ember-cli/node_modules/bower/node_modules/update-notifier/node_modules/latest-version/node_modules/package-json/node_modules/got/node_modules/duplexify/node_modules/readable-stream/doc) -> The user limit on the total number of inotify watches was reached; increase the fs.inotify.max_user_watches sysctl
   server_1 | All requests will continue to fail with this message until you resolve
   server_1 | the underlying problem.  You will find more information on fixing this at
   server_1 | https://facebook.github.io/watchman/docs/troubleshooting.html#poison-inotify-add-watch
   ```
   
   Then watchman is running out of resources trying to track all the files in a large ember app.  To increase the `fs.inotify.max_user_watches` count to something that is more appropriate for an ember app, stop your docker-compose server by hitting ctrl-c (or `docker-compose stop server` if necessary) then execute the following command:
   
   ```
   $ docker run --rm --privileged danlynn/ember-cli:2.13.2 sysctl -w fs.inotify.max_user_watches=524288
   ```
   
   Note that this will affect all containers that run on the current docker-machine from this point forward because `fs.inotify.max_user_watches` is a system-wide setting.  This shouldn't be a big deal however, so go ahead and give it a try.  Then start the docker-compose service again with
   
   ```
   $ docker-compose up
   ```

4. Launch the ember webapp:

   You will need to first determine the IP of the docker container:

   ```
   $ docker-machine ip default
   -or-
   $ boot2docker ip

   192.168.59.103
   ```

   Next open that ip address in your browser on port 4200:

   + http://192.168.59.103:4200

### Command Usage for `docker-compose`

The ember, bower, and npm commands can be executed in the container to effect changes to your local project dir as follows.  You basically put a "docker-compose run --rm" in front of any of the 3 commands and pass the normal command options as usual.

Example:

```
$ docker-compose run --rm npm install
$ docker-compose run --rm bower install bootstrap
$ docker-compose run --rm ember generate model user
```

### Command Usage for `docker run`

Basically put `docker run -ti -v $(pwd):/myapp danlynn/ember-cli:2.13.2` before any command you run.

Example:

```
$ docker run -ti -v $(pwd):/myapp danlynn/ember-cli:2.13.2 npm install
$ docker run -ti -v $(pwd):/myapp danlynn/ember-cli:2.13.2 bower --allow-root install bootstrap
$ docker run -ti -v $(pwd):/myapp danlynn/ember-cli:2.13.2 ember generate model user
$ docker run -ti -v $(pwd):/myapp -p 4200:4200 -p 49153:49153 danlynn/ember-cli:2.13.2
```

Alternatively, you could simply launch into a bash shell and execute the commands in the normal fashion:

```
$ mkdir new_ember_app
$ cd new_ember_app
$ docker run -ti -v $(pwd):/myapp -p 4200:4200 -p 49153:49153 danlynn/ember-cli:2.13.2 bash

root@9ad4805d2b50:/myapp# ember init
root@9ad4805d2b50:/myapp# npm install
root@9ad4805d2b50:/myapp# bower --allow-root install
root@9ad4805d2b50:/myapp# ember server
```

Note that bash had to be launched with `-p 4200:4200 -p 49153:49153` in order to be able to access the `ember server`.

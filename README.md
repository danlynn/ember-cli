## Supported tags and respective `Dockerfile` links

+ [`0.1.15`,`latest` (0.1.15/Dockerfile)](https://github.com/danlynn/ember-cli/blob/master/Dockerfile)

This image is based on: [geoffreyd/ember-cli](https://registry.hub.docker.com/u/geoffreyd/ember-cli/)

This image contains node, npm, bower, phantomjs, and of course ember-cli.  The container's working dir is /myapp so that you can setup a volume mapping your project dir to /myapp in the container.

package   | version
-------   | -------
node      | 0.10.36
npm       | 2.5.0
bower     | 1.3.12
phantomjs | 1.9.15
ember-cli | 0.1.15


## How to use - Easy Way

Clone the [ember-cli-docker-template](https://github.com/danlynn/ember-cli-docker-template) project from github which already has everything all setup to start using this image.  It also conveniently sets up aliases for the ember, bower, and npm commands so that you don't need to type `docker-compose run --rm <command>`.  Instead, you can simply type the command just as if it was running locally instead of in a docker container.

## How to use - Hard Way

The harder way is to manually setup a project to use this container via [docker-compose](http://www.fig.sh).

1. Create new project dir and add a docker-compose.yml file similar the following:

   ```
   ember: &defaults
     image: danlynn/ember-cli:0.1.15
     volumes:
       - .:/myapp

   npm:
     <<: *defaults
     entrypoint: ['/usr/local/bin/npm']

   bower:
     <<: *defaults
     entrypoint: ['/usr/local/bin/bower', '--allow-root']

   server:
     <<: *defaults
     command: server --watcher polling
     ports:
       - "4200:4200"
       - "35729:35729"
   ```

2. Create an ember app in the current dir:

	```
	docker-compose run --rm ember init
	```

3. Start the ember server:

   ```
   $ docker-compose up server
   ```

   This launches the ember-cli server on port 4200 in the docker container. As you make changes to the ember webapp files, they will automagically be detected and the associated files will be recompiled and the browser will auto-reload showing the changes.

4. Launch the ember webapp:

   You will need to first determine the IP of the docker container:

   ```
   $ boot2docker ip

   192.168.59.103
   ```

   Next open that ip address in your browser on port 4200:

   + http://192.168.59.103:4200

## Command Usage

The ember, bower, and npm commands can be executed in the container to effect changes to your local project dir as follows.  You basically put a "docker-compose run --rm" in front of any of the 3 commands and pass the normal command options as usual.

Example:

```
docker-compose run --rm npm install
docker-compose run --rm bower install bootstrap
docker-compose run --rm ember generate model user
```


FROM node:8.4.0
MAINTAINER Dan Lynn <docker@danlynn.org>

# ember server on port 4200
# livereload server on port 49153 (changed in v2.11.1 from 49152)
EXPOSE 4200 49153
WORKDIR /myapp

# run ember server on container start
CMD ["ember", "server"]

# Install watchman build dependencies 
RUN \ 
	apt-get update -y &&\
	apt-get install -y python-dev
 
# install watchman
# Note: See the README.md to find out how to increase the
# fs.inotify.max_user_watches value so that watchman will 
# work better with ember projects.
RUN \
	git clone https://github.com/facebook/watchman.git &&\
	cd watchman &&\
	git checkout v4.7.0 &&\
	./autogen.sh &&\
	./configure &&\
	make &&\
	make install

# Install ember dev dependencies
RUN \
	npm install -g bower@1.8.0

# install official phantomjs binaries
RUN \
	mkdir /tmp/phantomjs &&\
	curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 | tar -xvj -C /tmp/phantomjs --strip-components=1 phantomjs-2.1.1-linux-x86_64/bin &&\
	mv /tmp/phantomjs/bin/phantomjs /usr/bin &&\
	rm -rf /tmp/phantomjs

# install chrome for default testem config (as of 2.15.0)
RUN apt-get update &&\
    apt-get install -y \
        apt-transport-https \
        gnupg \
        --no-install-recommends &&\
	curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - &&\
	echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list &&\
	apt-get update &&\
	apt-get install -y \
	    google-chrome-stable \
	    --no-install-recommends

# tweak chrome to run with --no-sandbox option
RUN \
	sed -i 's/"$@"/--no-sandbox "$@"/g' /opt/google/chrome/google-chrome

# Install ember-cli
RUN \
	npm install -g ember-cli@2.15.1

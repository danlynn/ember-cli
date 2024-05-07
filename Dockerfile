FROM node:20.12.2-bullseye
MAINTAINER Dan Lynn <docker@danlynn.org>

# ember server on port 4200
# livereload server on port 7020 (changed in v2.17.0 from 49153)
# test server on port 7357
EXPOSE 4200 7020 7357
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
	git clone --branch=v4.9.0 --depth=1 https://github.com/facebook/watchman.git &&\
	cd watchman &&\
	./autogen.sh &&\
	CXXFLAGS=-Wno-error ./configure &&\
	make &&\
	make install

# install bower
RUN \
	npm install -g bower@1.8.8

# install chrome for default testem config (as of ember-cli 2.15.0)
RUN \
    apt-get update &&\
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

# set container bash prompt color to blue in order to 
# differentiate container terminal sessions from host 
# terminal sessions
RUN \
	echo 'PS1="\[\\e[0;94m\]${debian_chroot:+($debian_chroot)}\\u@\\h:\\w\\\\$\[\\e[m\] "' >> ~/.bashrc

# install ember-cli
RUN \
	npm install -g ember-cli@5.8.1

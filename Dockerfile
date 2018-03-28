FROM node:8.9.4
MAINTAINER Dan Lynn <docker@danlynn.org>

# ember server on port 4200
# livereload server on port 7020 (changed in v2.17.0 from 49153)
# test server on port 5779
EXPOSE 4200 7020 5779
WORKDIR /myapp

COPY ./entrypoint.sh /entrypoint.sh

# run ember server on container start
CMD ["sh", "/entrypoint.sh"]

# Install watchman build dependencies
RUN \
	apt-get update -y &&\
	apt-get install -y python-dev &&\
 	git clone https://github.com/facebook/watchman.git &&\
	cd watchman &&\
	git checkout v4.7.0 &&\
	./autogen.sh &&\
	./configure &&\
	make &&\
	make install &&\
	npm install -g bower@1.8.2 &&\
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
	    --no-install-recommends &&\
	sed -i 's/"$@"/--no-sandbox "$@"/g' /opt/google/chrome/google-chrome &&\
	echo 'PS1="\[\\e[0;94m\]${debian_chroot:+($debian_chroot)}\\u@\\h:\\w\\\\$\[\\e[m\] "' >> ~/.bashrc &&\
	npm install -g ember-cli@3.0.0

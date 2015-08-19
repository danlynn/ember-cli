FROM node:0.12.2
MAINTAINER Dan Lynn <docker@danlynn.org>

# Note: npm is v2.11.0
RUN npm install -g ember-cli@1.13.8
RUN npm install -g bower@1.4.1
RUN npm install -g phantomjs@1.9.18

# install watchman
RUN \
	git clone https://github.com/facebook/watchman.git &&\
	cd watchman &&\
	git checkout v3.5.0 &&\
	./autogen.sh &&\
	./configure &&\
	make &&\
	make install

EXPOSE 4200 35729
WORKDIR /myapp

# run ember server on container start
ENTRYPOINT ["/usr/local/bin/ember"]
CMD ["server"]

FROM node:4.2.3
MAINTAINER Dan Lynn <docker@danlynn.org>

EXPOSE 4200 35729
WORKDIR /myapp

# run ember server on container start
ENTRYPOINT ["/usr/local/bin/ember"]
CMD ["server"]

# Note: npm is v2.14.7
RUN \
	npm install -g ember-cli@2.5.0 &&\
	npm install -g bower@1.7.1 &&\
	npm install -g phantomjs@1.9.19

# install watchman
RUN \
	git clone https://github.com/facebook/watchman.git &&\
	cd watchman &&\
	git checkout v3.5.0 &&\
	./autogen.sh &&\
	./configure &&\
	make &&\
	make install

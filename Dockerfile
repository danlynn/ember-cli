FROM node:0.12.7
MAINTAINER Dan Lynn <docker@danlynn.org>

# Note: npm is v2.12.1
RUN npm install -g ember-cli@1.13.1
RUN npm install -g bower@1.7.1
RUN npm install -g phantomjs@1.9.19

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

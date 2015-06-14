FROM node:0.12.2
MAINTAINER Dan Lynn <docker@danlynn.org>

# Note: npm is v2.7.6
RUN npm install -g ember-cli@0.2.7
RUN npm install -g bower@1.4.1
RUN npm install -g phantomjs@1.9.16

# install watchman
RUN \
	git clone https://github.com/facebook/watchman.git &&\
	cd watchman &&\
	git checkout v3.1 &&\
	./autogen.sh &&\
	./configure &&\
	make &&\
	make install

EXPOSE 4200 35729
WORKDIR /myapp
ENTRYPOINT ["/usr/local/bin/ember"]
CMD ["help"]

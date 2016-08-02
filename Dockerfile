FROM node:4.2.3
MAINTAINER Dan Lynn <docker@danlynn.org>

EXPOSE 4200 35729
WORKDIR /myapp

# run ember server on container start
ENTRYPOINT ["/usr/local/bin/ember"]
CMD ["server"]

# Note: npm is v2.14.7
RUN \
	npm install -g ember-cli@2.7.0 &&\
	npm install -g bower@1.7.9 &&\
	npm install -g phantomjs@2.1.7

# install watchman
# Note: See the README.md to find out how to increase the
# fs.inotify.max_user_watches value so that watchman will 
# work better with ember projects.
RUN \
	git clone https://github.com/facebook/watchman.git &&\
	cd watchman &&\
	git checkout v3.5.0 &&\
	./autogen.sh &&\
	./configure &&\
	make &&\
	make install

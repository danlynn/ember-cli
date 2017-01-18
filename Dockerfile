FROM node:4.6.2
MAINTAINER Dan Lynn <docker@danlynn.org>

# ember server on port 4200
# livereload server on port 49152
EXPOSE 4200 49152
WORKDIR /myapp

# run ember server on container start
CMD ["ember", "server"]

# Note: npm is v2.15.11
RUN \
	npm install -g ember-cli@2.10.1 &&\
	npm install -g bower@1.8.0 &&\
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

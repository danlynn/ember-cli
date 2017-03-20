FROM node:4.8.0
MAINTAINER Dan Lynn <docker@danlynn.org>

# ember server on port 4200
# livereload server on port 49153 (changed in 2.11.1 from 49152)
EXPOSE 4200 49153
WORKDIR /myapp

# run ember server on container start
CMD ["ember", "server"]

# Note: npm is v2.15.11
RUN \
	npm install -g ember-cli@2.12.0 &&\
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

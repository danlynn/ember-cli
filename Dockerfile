FROM node:0.12.2
MAINTAINER Dan Lynn <docker@danlynn.org>

# Note: npm is v2.7.6
# TODO: install watchman?
RUN npm install -g ember-cli@0.2.3 bower@1.4.1 phantomjs@1.9.16

EXPOSE 4200 35729
WORKDIR /myapp
ENTRYPOINT ["/usr/local/bin/ember"]
CMD ["help"]

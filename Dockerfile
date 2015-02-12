FROM node:0.10.36
MAINTAINER Dan Lynn <docker@danlynn.org>

RUN npm install -g ember-cli@0.1.14 bower@1.3.12

EXPOSE 4200 35729
WORKDIR /myapp
ENTRYPOINT ["/usr/local/bin/ember"]
CMD ["help"]

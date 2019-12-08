FROM alpine

# install nodejs
RUN apk add --update nodejs nodejs-npm && \
    # install docsify
    npm install docsify-cli -g && \
    # create directory for docs
    mkdir -p /srv/docs/

# exppse default port
EXPOSE 3000

# set working directory
WORKDIR /srv/docs/

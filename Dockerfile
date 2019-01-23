FROM node:10-alpine

LABEL AUTHOR Chris<36bweb.rocks@gmail.com>

RUN apk add --no-cache git \
    && npm config set unsafe-perm true \
    && npm install -g hexo-cli \
    && npm cache clear --force \
    && npm config set unsafe-perm false \
    && rm -rf /tmp/* \
    && mkdir /blog \
    && chown node:node /blog

USER node

WORKDIR /blog

EXPOSE 4000

ENTRYPOINT [ "hexo" ]
CMD [ "help" ]
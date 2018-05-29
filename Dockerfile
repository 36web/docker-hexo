FROM node:10

LABEL AUTHOR 36web<36bweb.rocks@gmail.com>

RUN npm install -g hexo-cli \
    && mkdir /blog \
    && chown node:node /blog

USER node

WORKDIR /blog

ENTRYPOINT [ "hexo" ]
CMD [ "help" ]
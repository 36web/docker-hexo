FROM node:10

LABEL AUTHOR 36web<36bweb.rocks@gmail.com>

RUN npm install -g hexo-cli \
    && npm cache clear --force \
	&& rm -rf /tmp/* \
    && mkdir /blog \
    && chown node:node /blog

USER node

WORKDIR /blog

EXPOSE 4000

ENTRYPOINT [ "hexo" ]
CMD [ "help" ]
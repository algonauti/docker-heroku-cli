FROM node:lts-alpine3.10

RUN yarn global add heroku@7.47.3

COPY rootfs /

ENTRYPOINT ["/usr/local/bin/heroku"]

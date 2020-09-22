FROM node:12.16.3-alpine

ENV ENV_SILENT=true

RUN mkdir -p /app

WORKDIR /app

COPY . /app

RUN yarn install

RUN chown -R node:node /app

USER node

EXPOSE 3333

CMD ["yarn", "start"]

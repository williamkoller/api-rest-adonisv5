FROM node:12.16.4

ENV ENV_SILENT=true

RUN mkdir -p /app

WORKDIR /app

COPY . /app

RUN yarn install

RUN chown -R node:node /app

USER node

EXPOSE 3333

CMD ["npm", "start"]

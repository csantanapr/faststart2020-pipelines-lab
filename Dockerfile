FROM registry.access.redhat.com/ubi8/nodejs-12

CMD [ "npm", "start" ]

RUN mkdir app

WORKDIR app

ENV NODE_ENV=production

COPY src/package*.json ./

RUN npm ci

COPY src .
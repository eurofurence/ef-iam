FROM node:12-alpine
MAINTAINER Martin Becker <kontakt@martin-becker.ovh>
EXPOSE 3000

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app/
COPY yarn.lock /app/
RUN yarn install

ENV NODE_ENV production
ENV HOST 0.0.0.0

COPY . /app/
RUN yarn build
RUN yarn cache clean

CMD [ "yarn", "start", "start" ]

FROM node:12
MAINTAINER Martin Becker <kontakt@martin-becker.ovh>
WORKDIR /app
COPY package.json ./
COPY yarn.lock ./
RUN yarn install
COPY . ./
ENV HOST 0.0.0.0
EXPOSE 3000
CMD [ "yarn", "run", "dev" ]

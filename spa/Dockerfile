FROM node:12.16
MAINTAINER Martin Becker <kontakt@martin-becker.ovh>
WORKDIR /app
COPY yarn.lock package.json ./
RUN yarn install
ADD . /app/
ENV HOST 0.0.0.0
EXPOSE 3000
CMD [ "yarn", "run", "dev" ]

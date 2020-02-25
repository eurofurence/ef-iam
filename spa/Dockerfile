FROM node:12
MAINTAINER Martin Becker <kontakt@martin-becker.ovh>

WORKDIR /app
ADD . /app/
RUN yarn install
ENV HOST 0.0.0.0
EXPOSE 3000
CMD [ "yarn", "run", "dev" ]

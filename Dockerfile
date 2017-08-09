FROM node:latest

WORKDIR /usr/app

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 0.28.4

COPY package.json .
COPY yarn.lock .
RUN yarn install --silent

COPY . .

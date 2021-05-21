FROM node:14-alpine

WORKDIR /app

COPY package.json /app/package.json
RUN npm install -g
RUN rm /app/package.json

ENTRYPOINT ['npm', 'run']

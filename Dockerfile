FROM node:14-alpine

WORKDIR /app

COPY package.json /app/package.json
RUN npm install -g
RUN rm /app/package.json && \
    ln -s /app/node_modules/nuxt/bin/nuxt.js /bin/nuxt && \
    chown -R node:node /app

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

EXPOSE 3000

USER node 
ENTRYPOINT ["npm", "run"]

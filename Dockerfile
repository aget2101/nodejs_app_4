FROM node:lts-alpine3.17
ENV NODE_ENV=production
WORKDIR /app
COPY package*.json /app
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "node", "server.js" ]


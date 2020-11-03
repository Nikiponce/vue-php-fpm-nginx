FROM node:10

WORKDIR /app

RUN npm install yarn

COPY package*.json ./

RUN yarn

EXPOSE 8080

CMD ["yarn", "serve"]
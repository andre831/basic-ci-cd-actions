FROM node:16.14-alpine3.14

WORKDIR /usr/src/app

COPY ./package.json .

RUN npm install -g express

COPY . .

EXPOSE 8080

CMD [ "node", "./main.js" ]

FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json  ./

RUN npm isntall

COPY . .

RUN npm run build

EXPOSE 3000/tcp

CMD [ "node", "dist/main.js" ]
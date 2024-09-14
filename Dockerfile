FROM node:alpine

WORKDIR /app

COPY . . 

run npm install

expose 3000

CMD [ "npm", "run", "dev" ]
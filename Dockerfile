FROM node:18-alpine

WORKDIR /root/nodejs-cicd-main

COPY package*.json ./

RUN  npm install

COPY . .

EXPOSE 3000

CMD ["npm","package-lock.json"]

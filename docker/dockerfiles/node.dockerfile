FROM node:18 as build

WORKDIR /usr/src/app

COPY package.json ./
RUN npm install
RUN npm install react-helmet
COPY . ./

EXPOSE 3000

CMD [ "npm", "start" ]

FROM node:16 as build

WORKDIR /usr/src/app

COPY package.json ./
RUN npm install
RUN npm install react-helmet
COPY . ./

RUN npm run build

FROM nginx:1.23
RUN apt-get update && apt-get install -y \
        certbot python3-certbot-nginx && \
    apt-get clean &&                     \
    rm -rf /var/lib/apt/
COPY --from=build /usr/src/app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY ./conf/default.conf /etc/nginx/conf.d

EXPOSE 80
# EXPOSE 443

CMD ["nginx","-g","daemon off;"]

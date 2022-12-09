FROM node:10 AS builder

LABEL maintainer="GIROUX GWENAEL"
WORKDIR /usr/src/app

COPY . .

RUN npm install && npm run build

FROM nginx

EXPOSE 80
ENV JAVA_URL_ENV_VAR=localhost

COPY nginx/ /etc/nginx/
#COPY sed.sh /docker-entrypoint.d/sed.sh
#RUN chmod +x /docker-entrypoint.d/sed.sh

COPY --from=builder /usr/src/app/dist /usr/share/nginx/html
# Imagem base
FROM node:alpine
COPY . /app
WORKDIR /app
CMD node app.js
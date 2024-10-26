FROM node:12-alpine
WORKDIR /app
COPY . .

# Install dependencies
RUN apk add --no-cache python2 g++ make
RUN yarn install --production
CMD ["node", "src/index.js"]

EXPOSE 3000

# Instructions

# 1. docker build -t docker-training .
# 2. docker run -dp 3000:3000 docker-training
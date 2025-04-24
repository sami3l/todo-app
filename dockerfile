FROM node:14-alpine
RUN apk add --no-cache python3 make g++ git
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3003
CMD ["npm", "start"]

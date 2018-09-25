FROM node:8
WORKDIR /usr/src/proxy
COPY package*.json ./
RUN npm install --production
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]
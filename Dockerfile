FROM node:18.17.1

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 4174

CMD ["npm", "run", "preview"]

FROM node:18.17.1

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm build

EXPOSE 4173

CMD ["npm", "run", "preview"]

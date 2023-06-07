FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

ENV MONGODB_USERNAME=mehran
ENV MONGODB_PASSWORD=123

CMD ["npm", "start"]

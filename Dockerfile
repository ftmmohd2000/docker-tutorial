FROM node:12

WORKDIR /user/src/app

COPY package.json ./

COPY yarn.lock ./

RUN yarn

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]
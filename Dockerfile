FROM node:alpine

WORKDIR /youhungry-oci

ENV PATH /youhungry-oci/node_modules/.bin:$PATH

COPY package.json ./

COPY yarn.lock ./

RUN yarn install

COPY . ./

CMD ["yarn", "start"]

EXPOSE 3000
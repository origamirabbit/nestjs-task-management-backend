FROM node:16.14.0-alpine AS development

WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN npm run build

FROM node:16.14.0-alpine as production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY --from=development /usr/src/app/dist ./

CMD ["node", "main"]
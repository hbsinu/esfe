FROM node:current-alpine

WORKDIR /app

COPY package.json yarn.lock ./ /app/
RUN yarn install 

COPY next.config.js ./next.config.js
COPY pages ./pages
COPY public ./public
COPY styles ./styles

CMD ["yarn", "dev"]


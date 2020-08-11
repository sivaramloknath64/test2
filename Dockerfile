FROM node:9.6.1-alpine AS build
WORKDIR /app
COPY package.json package-lock.json ./

RUN npm i npm@latest -g

COPY . .
RUN ng build

# start app
CMD ["npm", "start"]

FROM node:14.7-alpine 
WORKDIR /app
COPY package.json package-lock.json ./

RUN npm install

COPY . .
RUN npm run build --prod
EXPOSE 8080
# start app
CMD ["npm", "start"]

FROM beevelop/ionic AS ionic
WORKDIR /usr/app/src
COPY package*.json ./
RUN npm install
COPY . .
RUN ng build
FROM nginx:alpine
COPY --from=ionic  /usr/app/www /usr/share/nginx/html

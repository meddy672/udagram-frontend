FROM beevelop/ionic AS ionic
WORKDIR /usr/app/src
COPY package*.json ./
RUN npm install
COPY . .
RUN ionic build
FROM nginx:alpine
COPY --from=ionic  /usr/src/app/www /usr/share/nginx/html

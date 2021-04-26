FROM beevelop/ionic
WORKDIR /usr/app/src
COPY ./www/package.json .
RUN npm install
COPY ./www .

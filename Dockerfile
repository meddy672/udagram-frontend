FROM ionic:6.13.1
WORKDIR /usr/app/src
COPY ./www/package.json .
RUN npm install
COPY ./www .

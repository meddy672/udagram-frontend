FROM beevelop/ionic
WORKDIR /usr/app/src
COPY package*.json ./
RUN npm install
COPY . .
RUN ionic build
COPY ./wwww .

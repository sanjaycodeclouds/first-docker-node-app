FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_22.x | bash -
RUN apt-get update -y
RUN apt-get install -y nodejs

COPY package.json package.json
# COPY local_source (from local package.json to Container package.json) destination

COPY package-lock.json package-lock.json
COPY main.js main.js

RUN npm install
# This command will run and install node inside container

ENTRYPOINT [ "node", "main.js" ]
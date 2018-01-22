# Damn Vulnerable Blockchain Application

FROM node:carbon
LABEL MAINTAINER "Subash SN"

WORKDIR /app

COPY . .

RUN npm install -g ganache-cli truffle
RUN cd node-src ;npm install ; cd ..

CMD ["bash", "/app/run.sh"]
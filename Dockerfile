FROM node:alpine

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm install -g @angular/cli

RUN npm install

ENV PORT 4200
EXPOSE 4200
CMD ["ng", "serve"]

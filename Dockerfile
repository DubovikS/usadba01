FROM node:18 as builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM nginx:alpine3.14
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80

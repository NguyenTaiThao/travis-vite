FROM node:16-alpine AS builder
WORKDIR /app

COPY package.json .
RUN yarn

COPY . .

RUN yarn build

#------------------------------------------------

FROM nginx
EXPOSE 80

COPY --from=builder /app/dist /usr/share/nginx/html

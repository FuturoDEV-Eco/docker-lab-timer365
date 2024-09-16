FROM node:alpine as construtora

WORKDIR /app

COPY . . 

RUN npm install

RUN npm run build

FROM nginx:alpine AS final

COPY --from=construtora /app/dist /usr/share/nginx/html

EXPOSE 80
EXPOSE 443
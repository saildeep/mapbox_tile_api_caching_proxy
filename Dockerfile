FROM nginx:1.19
ARG MAPBOX_TOKEN=Missing
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf
RUN sed -i "s/ACCESS_TOKEN_HERE/$MAPBOX_TOKEN/g" /etc/nginx/conf.d/default.conf

EXPOSE 80

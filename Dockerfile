FROM nginx:alpine
LABEL org.opencontainers.image.authors="nat@natwelch.com"

EXPOSE 8080

COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf

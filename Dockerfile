FROM nginx:1.29-alpine

LABEL org.opencontainers.image.source=https://github.com/icco/subalpinedrift
LABEL org.opencontainers.image.description="ghcr.io/icco/subalpinedrift container image"
LABEL org.opencontainers.image.authors="nat@natwelch.com"

EXPOSE 8080

COPY index.html /usr/share/nginx/html/index.html
COPY vitals.js /usr/share/nginx/html/vitals.js
COPY PXL_20260414_181006912-EDIT.jpg /usr/share/nginx/html/PXL_20260414_181006912-EDIT.jpg
COPY nginx.conf /etc/nginx/conf.d/default.conf

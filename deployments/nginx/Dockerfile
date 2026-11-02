FROM nginx:latest

COPY ./deployments/nginx/nginx.conf /etc/nginx/nginx.conf

COPY ./deployments/nginx/certs /etc/nginx/certs

COPY ./deployments/nginx/.htpasswd /etc/nginx/.htpasswd

EXPOSE 443
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
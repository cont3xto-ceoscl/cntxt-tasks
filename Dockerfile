FROM nginx:alpine

# Limpiar directorio web por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar configuracion optimizada de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar todos los archivos estaticos del aplicativo
COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

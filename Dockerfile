FROM nginx:alpine

# Limpiar directorio web por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar configuracion optimizada de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar archivos del aplicativo CNTXT Task
COPY index.html /usr/share/nginx/html/
COPY checklist.html /usr/share/nginx/html/
COPY checklist.css /usr/share/nginx/html/
COPY checklist.js /usr/share/nginx/html/
COPY config.js /usr/share/nginx/html/
COPY "01. CNTXT_BLANCO.png" /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

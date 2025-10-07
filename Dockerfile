# Usando a imagem oficial do NGINX
FROM nginx:alpine

# Copie o codigo HTML personalizado para o diretório padrão do NGINX

COPY ./index.html /usr/share/nginx/html/index.html

# Exponha a porta padrão do NGINX
EXPOSE 80


# ViaCEP - Tarefa 2

## Descrição

Configurar um ambiente Docker utilizando docker-compose, que vai buildar uma imagem NGINX a partir de um Dockerfile personalizado.

## Passos para construir a imagem:

1. Criar uma pasta para o projeto exemplo "Dockercompose para Nginx".
2. Criar o arquivo index.html com o codigo da aplicação ViaCEP encontrada em: https://viacep.com.br/exemplo/jquery/
3. Criar o Dockerfile com o conteúdo:
    ```
    FROM nginx:alpine
    COPY ./index.html /usr/share/nginx/html/index.html
    EXPOSE 80
    ```

### Buildar a imagem a partir do Dockerfile criado:

1. Criar o arquivo docker-compose.yml com o conteúdo:
    ```
    version: '3.8'
services:
  web:
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - "8080:80"
    restart: unless-stopped
    ```

2. Para subir o container, execute no (Windows PowerShell/CMD:
    ```
    docker compose up -d
    ```

- Link para Docker Hub: 
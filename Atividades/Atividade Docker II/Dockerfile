#define a imagem base para o container
FROM golang:alpine
#define o diretório de trabalho padrão do container
WORKDIR /app
#realiza a copia dos arquivos que gerenciam as dependencias (go.mod) e e integridade destas (go.sum), em uma aplicação Go.
COPY go.mod go.sum ./
#realiza o download das dependencias listadas no arquivo "go.mod" e verifica a integridade destas.
RUN go mod download && go mod verify
#realiza a copia de todo o conteudo da pasta, onde encontra-se o Dockerfile, para o container na pasta definida pelo Workdir(/app).
COPY . .
#realiza a construção do binario da aplicação Go na pasta "/usr/local/bin"
RUN go build -o /usr/local/bin/api-albums-music
#remove todos os arquivos da pasta "/app"
RUN rm -R ./*
#apos o inicio do container executa o comando "api-albums-music" para iniciar a API.
CMD ["api-albums-music"]

#Link da imagem no docker hub:
#https://hub.docker.com/repository/docker/joaoaaf/api-go-doc/general
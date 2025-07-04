FROM alpine:latest

ARG PB_VERSION=0.28.2

RUN apk add --no-cache \
    unzip \
    ca-certificates \
    wget

# Baixar e descompactar o PocketBase
RUN wget https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_amd64.zip -O /tmp/pb.zip && \
    unzip /tmp/pb.zip -d /pb/

# Expor a porta padrão do PocketBase
EXPOSE 8090

# Comando para iniciar o PocketBase
CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8090"]

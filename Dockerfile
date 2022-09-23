FROM node:14 as base
# Versão/tipo node

WORKDIR /home/node/app
# Caminho da aplicação dento do container

COPY package.json ./
# Pegar qualquer arquivo que comece com "package" e termine com ".json" e copia para raiz (WORKDIR)

RUN npm i
# INstala dependências

COPY . .
# Copia tudo no nível do Dockerfile para WORKDIR

RUN npm run build

ENV NODE_PATH=./build
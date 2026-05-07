FROM node:24-alpine

RUN npm install -g @actual-app/cli

ENTRYPOINT ["actual"]


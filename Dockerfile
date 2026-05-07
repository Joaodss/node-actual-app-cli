FROM node:24-alpine AS builder

WORKDIR /app

COPY package*.json .npmrc ./

RUN npm ci \
    --omit=dev \
    --no-audit \
    --no-fund \
    && npm cache clean --force


FROM node:24-alpine

WORKDIR /app

COPY --from=builder /app/node_modules ./node_modules
COPY package*.json ./

ENTRYPOINT ["./node_modules/.bin/actual"]
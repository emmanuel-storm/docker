FROM node:20 AS builder

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

FROM node:20 AS production

WORKDIR /app

COPY --from=builder /app/package*.json ./

ENV NODE_ENV=production

CMD ["node", "dist/index.js"]

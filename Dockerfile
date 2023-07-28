FROM node:20

WORKDIR /app

COPY ["package.json", "/app"]

VOLUME /app/node_modules

RUN npm install -g pnpm

RUN pnpm install

RUN pnpm prisma generate

CMD ["pnpm", "prisma", "migrate", "dev"]


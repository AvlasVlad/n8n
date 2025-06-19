FROM node:20-alpine

WORKDIR /app

# Установить pnpm
RUN npm install -g pnpm

COPY . .

RUN pnpm install --prod

EXPOSE 5678

CMD ["pnpm", "start"]

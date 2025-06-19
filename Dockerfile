FROM node:20-alpine

WORKDIR /app

COPY . .

RUN npm install --omit=dev

EXPOSE 5678

CMD ["npx", "n8n"]

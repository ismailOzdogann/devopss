# Production NodeJS image
FROM node:18-alpine

WORKDIR /app

# package.json ve package-lock.json'u kopyala
COPY package*.json ./

# dependency yoksa npm install çalışır
RUN npm install --production

# uygulama dosyalarını kopyala
COPY . .

EXPOSE 3000

CMD ["node", "index.js"]  # main.js yerine index.js kullanabiliriz


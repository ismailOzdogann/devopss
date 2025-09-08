# 1. Aşama: Build
FROM node:18 AS build

# Çalışma dizini
WORKDIR /app

# package.json ve lock dosyalarını kopyala
COPY package*.json ./

# bağımlılıkları yükle
RUN npm ci

# kaynak kodu kopyala
COPY . .

# uygulamayı build et (React, Angular, Vue gibi frontend ise)
# backend ise bu satır olmayabilir
RUN npm run build

# 2. Aşama: Production
FROM node:18-alpine

WORKDIR /app

# sadece production bağımlılıklarını yükle
COPY package*.json ./
RUN npm ci --omit=dev

# build aşamasından çıktıları kopyala
COPY --from=build /app/dist ./dist

# (opsiyonel) config dosyaları, public dosyalar
# COPY --from=build /app/public ./public

EXPOSE 3000

CMD ["node", "dist/main.js"]


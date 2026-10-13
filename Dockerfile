FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
EXPOSE 8080
RUN npm ci --omit=dev
COPY . .
CMD ["npm", "start"]
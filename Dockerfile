FROM node:lts-alpine
WORKDIR /app
COPY src/azure-sa/package*.json ./
RUN yarn install --production
COPY src/azure-sa/ ./
EXPOSE 3000
CMD ["node", "index.js"]
FROM node:18-alpine

WORKDIR /app

COPY neuron_viz/frontend/package*.json ./

RUN npm install

RUN npm install -g browser-sync

# Files are mounted from the host machine for development, see docker-compose.yml

EXPOSE 8501

CMD ["browser-sync", "start", "--server", "--port", "8501", "--files", "**/*", "--no-notify"]

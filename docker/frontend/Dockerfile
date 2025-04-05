FROM node:18-alpine

# Set working directory
WORKDIR /app

COPY neuron_viz/frontend/package*.json ./

RUN npm install

RUN npm install -g browser-sync

COPY neuron_viz/frontend/ ./

EXPOSE 8501

CMD ["browser-sync", "start", "--server", "--port", "8501", "--files", "**/*", "--no-notify"]

FROM node:lts-alpine3.18

WORKDIR /app

RUN npm install -g miniflare

COPY .  /app

ENTRYPOINT [ "miniflare", "index.js", "--debug", "--host", "0.0.0.0", "--port", "8787", "--wrangler-config", "wrangler.toml", "wrangler.toml", "--wrangler-env"]
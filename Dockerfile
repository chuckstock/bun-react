FROM oven/bun

WORKDIR /usr/src/app

COPY package*.json bun.lock ./
RUN bun install
COPY . .

CMD [ "bun", "start" ]
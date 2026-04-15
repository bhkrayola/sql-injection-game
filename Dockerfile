FROM node:18-bullseye

RUN apt-get update && apt-get install -y python3 python3-pip && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm install --production
COPY . .

RUN if [ -f ./resetdb.py ]; then python3 resetdb.py; fi

EXPOSE 8080

CMD ["node", "index.js"]

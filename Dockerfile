## STAGE 1 ##
## Build sources ##
FROM node:18 AS builder

WORKDIR /app

COPY package*.json ./

# Safer to use npm clean-install, but it requires package-lock.json
RUN npm clean-install

COPY . .

CMD [ "npm", "run", "dev" ]

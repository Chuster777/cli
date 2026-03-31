FROM node:22-alpine

WORKDIR /app

# Install git required by npm scripts
RUN apk add --no-cache git

COPY . .

# Remove any existing node_modules to ensure clean install
RUN rm -rf node_modules

# Install dependencies
RUN npm install

CMD ["npm", "test"]

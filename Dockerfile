# Use official Node.js image
FROM node:16

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose port and start app
EXPOSE 3000
CMD ["node", "index.js"]


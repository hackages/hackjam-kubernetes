# Build image will be latest version of node
FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

# Run the command npm install 
RUN npm install

# Copy server.js
COPY . .

# Expose the port 8089
EXPOSE 8088

# Run the command npm start
CMD [ "npm", "start" ]

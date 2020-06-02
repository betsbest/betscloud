FROM node:6.9-alpine

# Set the applilcation directory
WORKDIR /app

COPY package.json /app

# Install app dependencies
RUN npm install

# Copy our code from the current folder to /app inside the container
COPY . /app

# Make port available for publish
EXPOSE 80 8080 443

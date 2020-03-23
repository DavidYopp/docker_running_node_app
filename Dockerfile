# Specify a base image
FROM node:alpine

# Set a working directory
WORKDIR /usr/app

# Install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default Command for when the container runs
CMD ["npm", "start"]

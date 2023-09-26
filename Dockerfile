# Use an existing node image as base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /react-docker-example/

# Copy package.json and package-lock.json to the container
COPY package.json /react-docker-example/

# Install required packages
RUN npm install

# Copy all files to the container
COPY public/ /react-docker-example/public
COPY src/ /react-docker-example/src

# Expose port 3000
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]
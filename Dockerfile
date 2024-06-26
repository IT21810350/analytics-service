# Use an official Node.js runtime as the base image
FROM node:current-alpine

# Set the working directory in the container
WORKDIR /analytics-service-container

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 8001

# Command to run the analytics service
CMD ["npm", "start"]

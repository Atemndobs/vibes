# Use an official Node runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copies package.json and package-lock.json to Docker environment
COPY package*.json ./

# Install dependencies
RUN npm install

# Copies the rest of your app's source code from your host to your Docker container
COPY . .

# Expose port 19006 for the web version
EXPOSE 19006
EXPOSE 8081

# Default command to run the web version of the app
CMD ["npm", "run", "web"]

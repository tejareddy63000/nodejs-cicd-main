# Use a Node.js 14 base image
FROM node:14

# Create and set the working directory
WORKDIR /root/nodejs-cicd-main

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port that the application will listen on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

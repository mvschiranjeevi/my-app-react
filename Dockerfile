# Specify the base image
FROM node:14-alpine

# Set the working directory in the Docker container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose port 3000 to the outside once the container has launched
EXPOSE 3000

# Define the command to run your app (same as "node app.js")
CMD ["node", "app.js"]

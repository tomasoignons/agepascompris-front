# Use a Node.js image to build your application
FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install the application dependencies
RUN npm ci

# Copy the application code
COPY . .

# Build the application
RUN npm run build

# Expose the port your app runs on
EXPOSE 5000

# Start the application
CMD ["npm", "start"]
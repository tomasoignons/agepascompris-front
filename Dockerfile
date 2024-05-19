# Use a Node.js image to build your application
FROM node:20.4.0-alpine

# Set the working directory
WORKDIR /app

COPY package.json /app
COPY package-lock.json /app

# Install the application dependencies
RUN npm install

# Copy the application code
COPY . /app

RUN npm run build
RUN npm install -g serve


EXPOSE 3001

CMD ["serve", "-s", "-l", "3001", "build"]
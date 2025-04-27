# Use the official Node.js image as the base image
FROM node:18-alpine AS builder

# Create and set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install project dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Build the project
RUN npm run build

# Use a minimal Node.js image to run the application
FROM node:18-alpine AS release

# Set the working directory
WORKDIR /app

# Copy the built files from the builder stage
COPY --from=builder /app/dist /app/dist
COPY --from=builder /app/package.json /app/package-lock.json ./

# Install only production dependencies
RUN npm ci --omit=dev

# The environment variables will be provided by Smithery
# based on the configuration in smithery.yaml

# Command to run the application
ENTRYPOINT ["node", "dist/index.js"]
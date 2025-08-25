# syntax=docker/dockerfile:1

# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/go/dockerfile-reference/

# Want to help us make this template better? Share your feedback here: https://forms.gle/ybq9Krt8jtBL3iCk7

ARG NODE_VERSION=20.19.4

FROM node:${NODE_VERSION}-alpine

# Use production node environment by default.
ENV NODE_ENV production

# Install FFmpeg
RUN apk add --no-cache ffmpeg

WORKDIR /usr/src/app

# Download dependencies as a separate step to take advantage of Docker's caching.
# Copy package files first
COPY package*.json ./
COPY tsconfig.json ./

# Install ALL dependencies (including dev dependencies for building)
RUN npm install

# Copy the rest of the source files into the image.
COPY . .

# Create output directory and set permissions
RUN mkdir -p output && chown node:node output

# Run the application as a non-root user.
USER node

# Run the application with ts-node (no compilation needed)
CMD npx ts-node bot.ts

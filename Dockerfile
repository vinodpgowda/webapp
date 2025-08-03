# specify a base image
FROM node:24-alpine3.21

# Specify working directory
WORKDIR /app

# Copy and install dependencies
COPY ./package.json ./
RUN npm install

# Copy rest of the files
COPY ./ ./

# Tell Docker and DO App Platform the port this conatiner listens
EXPOSE 8080

# Default command
CMD ["npm", "start"]
# Use Node base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files first (for caching)
COPY package*.json ./

# Install dependencies (optional but good practice)
RUN npm install

# Install Parcel globally
RUN npm install -g parcel

# Copy project files
COPY . .

# Expose Parcel default port
EXPOSE 1234

# Run the app (bind to all interfaces for Docker port forwarding)
CMD ["parcel", "src/index.html", "--host", "0.0.0.0", "--port", "1234"]
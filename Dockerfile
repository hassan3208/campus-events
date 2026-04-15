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

# Run the app
CMD ["parcel", "src/index.html"]
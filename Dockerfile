# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy backend files
COPY backend/package*.json ./backend/
RUN cd backend && npm install

# Copy full project
COPY . .

# Expose backend port (change if needed)
EXPOSE 5000

# Start backend
WORKDIR /app/backend
CMD ["npm", "start"]

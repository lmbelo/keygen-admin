FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy the entire project (including deploy.sh and src/)
COPY . .

# Make deploy.sh executable
RUN chmod +x deploy.sh

# Install PM2 globally
RUN npm install -g pm2

# Install project dependencies
RUN npm install

EXPOSE 3000

CMD ["./deploy.sh", "--deploy"]

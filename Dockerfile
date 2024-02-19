FROM node:20.11.1

# Set the working directory in the container
WORKDIR /usr/www/app

# Copy the local code to the container
COPY . .

# Install app dependencies
RUN npm install

# Expose port 3000
EXPOSE 4173

# Build the React app
RUN npm run build

# Specify the command to run on container start
CMD ["npm", "run", "preview", "--", "--host"]
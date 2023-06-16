# Use Python 3.6 or later as a base image
FROM node:18
# Copy contents into image
COPY . .	
# Install pip dependencies from requirements
RUN npm install
# Set YOUR_NAME environment variable
# Expose the correct port
EXPOSE 5500
# Create an entrypoint
ENTRYPOINT ["node","index.js"]
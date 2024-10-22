# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Remove the default Nginx index page
RUN rm /usr/share/nginx/html/index.html

# Copy the custom HTML page to the container
COPY index.html /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 90

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

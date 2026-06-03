# Use a lightweight Alpine-based Nginx image 
FROM nginx:alpine

# Remove the default configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom configuration file from the host to the container
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Copy your site content
COPY ./dist /usr/share/nginx/html

EXPOSE 80


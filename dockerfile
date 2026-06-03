# Use lightweight Nginx image from AWS public ECR
FROM public.ecr.aws/nginx/nginx:alpine

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your project files into Nginx web root
COPY . /usr/share/nginx/html

# Optional: custom nginx config (only if you have one)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose HTTP port
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

FROM nginx:latest

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Remove old default site config
RUN rm -f /etc/nginx/conf.d/default.conf

# Copy static files
COPY index.html style.css /usr/share/nginx/html/

# Copy clean Nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

# Expose port
EXPOSE 80

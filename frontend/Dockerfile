# FROM nginx:1.26.3-alpine
# EXPOSE 80
# RUN rm -rf /usr/share/nginx/html/*

# COPY code/ /usr/share/nginx/html/

# RUN rm -rf /etc/nginx/nginx.conf
# RUN rm -rf /etc/nginx/conf.d/default.conf

# COPY nginx.conf /etc/nginx/nginx.conf

# COPY expense.conf /etc/nginx/default.d/expense.conf

# CMD ["nginx", "-g", "daemon off;"]



FROM nginx:1.26.3-alpine

EXPOSE 80

# Remove default HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy application code to Nginx's web root
COPY code/* /usr/share/nginx/html/

RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy expense.conf to the correct Nginx configuration directory
COPY expense.conf /etc/nginx/conf.d/expense.conf

# Start Nginx in foreground mode
CMD ["nginx", "-g", "daemon off;"]



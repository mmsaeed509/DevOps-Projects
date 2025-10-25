FROM nginx:alpine

# Copy nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy SSL generation script
COPY generate-ssl.sh /usr/local/bin/generate-ssl.sh
RUN chmod +x /usr/local/bin/generate-ssl.sh

# Install openssl for SSL certificate generation
RUN apk add --no-cache openssl

# Generate SSL certificates
RUN /usr/local/bin/generate-ssl.sh

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
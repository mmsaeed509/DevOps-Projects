#!/bin/sh

# Reset #
RESET_COLOR='\033[0m' # Text Reset
BGreen='\033[1;32m'

# Create SSL directory
mkdir -p /etc/nginx/ssl

# Generate self-signed SSL certificate
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"

echo ""
echo -e "${BGreen}SSL certificates generated successfully!  ✔ ${RESET_COLOR}"
echo ""
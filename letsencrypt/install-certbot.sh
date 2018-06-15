# Add PPA.
apt-get update
apt-get install software-properties-common
add-apt-repository ppa:certbot/certbot
apt-get update

# Install Certbot for Apache.
apt-get install python-certbot-apache

# Run it.
certbot --apache

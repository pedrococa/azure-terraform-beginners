#!/bin/sh
# Deploys a simple Apache webpage

apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>World Map... as a service</title></head>
  <center><img src="https://geospatialmedia.s3.amazonaws.com/wp-content/uploads/2018/04/GeoSpock_Logo-Registered-Black.jpg"></img></center>
  </body>
</html>
EOM

echo "Your demo is now ready."

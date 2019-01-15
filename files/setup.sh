#!/bin/sh
# Deploys a simple Apache webpage

apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>World Map... as a service</title></head>
  <center><img src="https://wl3-cdn.landsec.com/sites/default/files/images/shops/logos/next_0.png"></img></center>
  </body>
</html>
EOM

echo "Your demo is now ready."

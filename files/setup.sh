#!/bin/sh
# Deploys a simple Apache webpage

apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>World Map... as a service</title></head>
  <center><img src="http://econscribi.com/wp-content/uploads/2014/11/shutterstock_129655604-Converted-copy-text.png"></img></center>
  </body>
</html>
EOM

echo "Your demo is now ready."

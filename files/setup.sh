#!/bin/sh
# Deploys a simple Apache webpage

apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>World Map... as a service</title></head>
  <center><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Floppy_disk_300_dpi.jpg/571px-Floppy_disk_300_dpi.jpg"></img></center>
  </body>
</html>
EOM

echo "Your demo is now ready."

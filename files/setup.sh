#!/bin/sh
# Deploys a simple Apache webpage

apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>F1</title></head>
  <center><img src="https://photoshop-kopona.com/uploads/posts/2018-04/1523011860_ferrari-1.jpg"></img></center>
  </body>
</html>
EOM

echo "Your demo is now ready."

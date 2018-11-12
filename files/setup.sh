#!/bin/sh
# Deploys a simple Apache webpage

apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>RRAAS</title></head>
  <center><img src="https://configure-12.rolls-roycemotorcars.com/html5/assets/images/model-selection/RR_Phantom_Model_Selector_Belladonna_3.jpg"></img></center>
  <marquee><h1>RRAAS!</h1></marquee>
  </body>
</html>
EOM

echo "Your demo is now ready."

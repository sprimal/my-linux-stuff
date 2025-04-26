#!/bin/bash

echo "enabling the server"
sudo systemctl enable httpd
echo "starting the server"
sudo systemctl start httpd
echo "checking the server"
sudo systemctl status httpd
echo "to /var/www/html"
cd /var/www/html 
echo "making the practice directory"
sudo mkdir -p practice
echo "entering the directory"
cd practice
echo "creating the index file"
sudo touch index.html
echo "writing content into the file"
sudo bash -c 'cat > /var/www/html/practice/index.html <<EOF 
<html>
<body>
<h1><strong>hello this site works...</strong></h1>
</body>
</html>
EOF'
echo "updatd and finished" 



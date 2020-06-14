#! /bin/bash
suudo yum update
sudo yum install -y httpd
sudo chkconfig httpd on
sudo service httpd start
echo "<h1>deployed via terraform2</h1>" | sudo tee /var/www/html/index.html



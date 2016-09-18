#!/bin/bash
sudo yum install -y httpd && sudo chown -R vagrant:vagrant /var/www && sudo echo "Hello from `hostname`" > /var/www/html/index.html
sudo service httpd start
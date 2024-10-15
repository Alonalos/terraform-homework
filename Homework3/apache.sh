#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl enable httpd 
sudo systemctl start httpd 
echo "<html>
  <head><title>Hello, World!</title></head>
  <body><h1>Hello, World!</h1></body>
</html>" | sudo tee /var/www/html/index.html
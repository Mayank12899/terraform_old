#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo apt install git
git clone https://github.com/Mayank12899/Static_Website.git
sudo mv Static_Website/ /var/www/html/
echo "<h1>Deployed via Terraform to AWS</h1>" | sudo tee /var/www/html/index.html
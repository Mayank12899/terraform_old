#! /bin/bash
sudo apt-get update
sudo apt install git -y
sudo apt install python3-pip -y
git clone http://Mayank12899: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@github.com/Mayank12899/mock-backend.git
cd /mock-backend/
sudo pip3 install -r requirements.txt
sudo python3 app.py > out.txt &

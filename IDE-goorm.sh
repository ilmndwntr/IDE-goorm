#!/bin/sh
# Free RDP GoormIDE
sudo adduser ilman --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "ilman:HatiYangTersakiti" | sudo chpasswd
sudo usermod -aG sudo,adm aank
sudo apt install screen
sudo apt update
clear
screen -R ilman
echo "===================================="
echo "Install XFCE"
echo "Choose Keyboard 31 then 1"
echo "===================================="
sudo apt install -y xfce4 xfce4-goodies > /dev/null 2>&1
echo "=======25%"
sudo apt install firefox -y > /dev/null 2>&1
echo "=============50%"
sudo apt-get install -y xrdp > /dev/null 2>&1
sudo apt-get install -y xfce4-terminal > /dev/null 2>&1
echo "=================70%"
echo xfce4-session >~/.xsession
echo "=====================90%"
sudo service xrdp start
clear
echo "=======================100%"
echo "===================================="
echo "RDP IP Address :" && curl --silent --show-error ipconfig.io
echo "Username : ilman"
echo "Password : HatiYangTersakiti"
echo Go to settings add port 3389
echo "===================================="
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
# Branding

printf """$c$b

 /$$$$$$$$        /$$       /$$   /$$             /$$               /$$      
|__  $$__/       | $$      | $$  /$$/            | $$              | $$      
   | $$  /$$$$$$ | $$$$$$$ | $$ /$$/   /$$$$$$  /$$$$$$    /$$$$$$ | $$   /$$
   | $$ /$$__  $$| $$__  $$| $$$$$/   /$$__  $$|_  $$_/   |____  $$| $$  /$$/
   | $$| $$$$$$$$| $$  \ $$| $$  $$  | $$  \ $$  | $$      /$$$$$$$| $$$$$$/ 
   | $$| $$_____/| $$  | $$| $$\  $$ | $$  | $$  | $$ /$$ /$$__  $$| $$_  $$ 
   | $$|  $$$$$$$| $$  | $$| $$ \  $$|  $$$$$$/  |  $$$$/|  $$$$$$$| $$ \  $$
   |__/ \_______/|__/  |__/|__/  \__/ \______/    \___/   \_______/|__/  \__/
                                                                             
    $r  Telegram @pekokxw 
          
$endc$enda""";

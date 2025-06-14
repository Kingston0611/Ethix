#!/data/data/com.termux/files/usr/bin/bash
echo "1) HiddenEye or 2) Zphisher"
read -p "Choose: " O
case $O in
  1)
    git clone https://github.com/DarkSecDevelopers/HiddenEye.git ~/HiddenEye && cd ~/HiddenEye && python HiddenEye.py ;;
  2)
    git clone https://github.com/htr-tech/zphisher.git ~/zphisher && cd ~/zphisher && bash zphisher.sh ;;
  *) echo "Canceled" ;;
esac

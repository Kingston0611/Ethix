#!/data/data/com.termux/files/usr/bin/bash
read -p "Hash file path: " F
hashid "$F"
read -p "Crack with John? (y/n): " A
[[ "$A" == "y" ]] && john "$F" && john --show "$F"

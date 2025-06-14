#!/data/data/com.termux/files/usr/bin/bash
read -p "Target (domain/IP): " T
mkdir -p "$HOME/ethix/logs/$T"
nmap -sC -sV "$T" -oN "$HOME/ethix/logs/$T/nmap.txt"
whois "$T" >> "$HOME/ethix/logs/$T/osint.txt"
dig "$T" any +short >> "$HOME/ethix/logs/$T/dns.txt"
echo "[Done] Recon results in logs/$T/"

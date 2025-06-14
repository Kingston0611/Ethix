#!/data/data/com.termux/files/usr/bin/bash
read -p "OSINT query (name/email/domain): " Q
xdg-open "https://google.com/search?q=$Q"
xdg-open "https://linkedin.com/search/results/all/?keywords=$Q"
xdg-open "https://facebook.com/search/top/?q=$Q"
xdg-open "https://whitepages.com/name/$Q"
xdg-open "https://hunter.io/search/$Q"
echo "[Done] OSINT queries opened in browser"

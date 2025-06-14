#!/data/data/com.termux/files/usr/bin/bash
whiptail --title "ETHIX Toolkit" --menu "Select an option:" 20 60 8 \
  "1" "Full Recon" \
  "2" "OSINT Lookup" \
  "3" "Password Crack" \
  "4" "Exploit Scan" \
  "5" "Phishing Tool" \
  "6" "Generate Report" \
  "7" "Exit" 3>&1 1>&2 2>&3 | while read M; do
  case $M in
    1) bash "$HOME/ethix/modules/full_recon.sh" ;;
    2) bash "$HOME/ethix/modules/osint.sh" ;;
    3) bash "$HOME/ethix/modules/password_crack.sh" ;;
    4) bash "$HOME/ethix/modules/exploit_scan.sh" ;;
    5) bash "$HOME/ethix/modules/phishing_tool.sh" ;;
    6) bash "$HOME/ethix/modules/generate_report.sh" ;;
    *) exit ;;
  esac
done

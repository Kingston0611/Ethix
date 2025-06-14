#!/data/data/com.termux/files/usr/bin/bash
OUT="$HOME/ethix/logs/$(date +%s)-report.txt"
echo "Recon logs report" > "$OUT"
find "$HOME/ethix/logs" -type f -exec cat {} \; >> "$OUT"
echo "[Done] Report at $OUT"

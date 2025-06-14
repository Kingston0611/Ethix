#!/data/data/com.termux/files/usr/bin/bash
set -e

banner() {
  clear
  echo -e "\033[1;92mETHIX — Ultimate Termux Toolkit\033[0m"
}

fix_repos() {
  termux-change-repo || true
  pkg install root-repo x11-repo unstable-repo -y
  pkg update -y && pkg upgrade -y
}

install_deps() {
  pkg install git wget curl tsu unzip python ruby nmap whois dnsutils hydra john -y || true
  pip install hashid requests beautifulsoup4 python-lolcat || true
  gem install lolcat || true
}

create_structure() {
  mkdir -p "$HOME/ethix/logs" "$HOME/ethix/modules" "$PREFIX/bin"
}

fetch_files() {
  base="https://raw.githubusercontent.com/kingston0611/ethix/main"
  curl -Lo "$HOME/ethix/ethix_tui.sh" "$base/ethix_tui.sh"
  for mod in full_recon generate_report osint password_crack exploit_scan phishing_tool; do
    curl -Lo "$HOME/ethix/modules/${mod}.sh" "$base/modules/${mod}.sh"
    chmod +x "$HOME/ethix/modules/${mod}.sh"
  done
  chmod +x "$HOME/ethix/ethix_tui.sh"
}

create_launcher() {
  echo -e "#!/bin/bash\nbash \$HOME/ethix/ethix_tui.sh \"\$@\"" > "$PREFIX/bin/ethix"
  chmod +x "$PREFIX/bin/ethix"
}

cleanup_old() {
  rm -f "$HOME/ethix_tui.sh"
}

verify_install() {
  if command -v ethix >/dev/null; then
    echo "✅ ETHIX installed!"
  else
    echo "❌ Installation failed."
    exit 1
  fi
}

main() {
  banner
  fix_repos
  install_deps
  create_structure
  fetch_files
  create_launcher
  cleanup_old
  verify_install
  echo "🔧 Run 'ethix' to launch!"
}

main

#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
REPO="https://raw.githubusercontent.com/Novandytio/kilz/main/"
CYAN='\033[0;96m'        # Cyan

BG="\E[44;1;39m"

NC="\E[0m"
clear
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

echo -e "  ${BG} >>> INFORMASI UPDATE SCRIP <<< ${NC}"

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

echo -e "      •> Add UDP Server <•" | lolcat

echo -e "    •> Install UDP Server <•" | lolcat

echo -e "      •> Fix Bug Script <•" | lolcat

echo -e "     •> Script By @Thekill <•" | lolcat

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

echo -e "  ${BG}  >>>      TheKill     <<< ${NC}" 

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

sleep 3
echo -e " [INFO] Downloading Update File"
sleep 2
rm -rf /tmp/menu
wget -O /tmp/menu-master.zip "${REPO}config/menu.zip" >/dev/null 2>&1
    mkdir /tmp/menu
    7z e  /tmp/menu-master.zip -o/tmp/menu/ >/dev/null 2>&1
    chmod +x /tmp/menu/*
    mv /tmp/menu/* /usr/sbin/

echo -e " [INFO] Update Menu Succes"
mkdir -p /etc/ssh
mkdir -p /etc/vmx
mkdir -p /etc/vls
mkdir -p /etc/tr
mkdir -p /etc/ss
echo -e " [INFO] Installing SSH UDP"
wget https://raw.githubusercontent.com/Novandytio/kilz/main/backup/set-br.sh
bash set-br.sh

rm -rf update.sh
sleep 2
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu
exit

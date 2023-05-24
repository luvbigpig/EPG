#!/bin/sh
. /etc/profile
apt update -y
apt install socat -y
apt install crontab -y

wget https://raw.githubusercontent.com/luvbigpig/EPG/main/epg.sh
chmod +x epg.sh
bash epg.sh

#!/data/data/com.termux/files/usr/bin/bash
apt remove -y game-repo science-repo
pkg install -y root-repo
pkg install -y git tsu python wpa-supplicant pixiewps iw

git clone --depth 1 https://github.com/Nobita270/OneShot OneShot

chmod +x /data/data/com.termux/files/home/OneShot/oneshot.py
chmod +x /data/data/com.termux/files/home/OneShot/wifi_connect.sh
echo "cd /data/data/com.termux/files/home/OneShot; sudo python3 oneshot.py -i wlan0 -K -w" > /data/data/com.termux/files/usr/bin/wifi
echo "clear; cat /data/data/com.termux/files/home/OneShot/reports/stored.txt" > /data/data/com.termux/files/usr/bin/waifus
chmod +x /data/data/com.termux/files/usr/bin/wifi
chmod +x /data/data/com.termux/files/usr/bin/waifus
clear
printf "#########################################################
#  All done! Now you can run OneShot with:
#   sudo python3 OneShot/oneshot.py -i wlan0 -K or wifi
#
#  To update, run:
#   (cd OneShot && git pull)
#
#  To see hacked networks:
#    waifus
#########################################################\n"

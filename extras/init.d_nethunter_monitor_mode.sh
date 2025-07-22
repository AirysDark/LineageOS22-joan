#!/system/bin/sh
# Kali NetHunter init script for LG V30+
# Place this in /system/etc/init.d/

echo "[*] Enabling monitor mode..."
ifconfig wlan0 down
iw wlan0 set monitor control
ifconfig wlan0 up

echo "[✓] Monitor mode ready."

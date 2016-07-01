# setup autologin
# based on https://www.raspberrypi.org/forums/viewtopic.php?f=28&t=127042
AUTOLOGIN=/etc/systemd/system/getty@tty1.service.d/autologin.conf
echo "[Service]" >> $AUTOLOGIN
echo "ExecStart=" >> $AUTOLOGIN
echo "ExecStart=-/sbin/agetty --autologin pi --noclear %I 38400 linux
" >> $AUTOLOGIN
sudo systemctl enable getty@tty1.service

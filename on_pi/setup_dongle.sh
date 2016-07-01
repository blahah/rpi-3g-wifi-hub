# get the dongle in the correct USB mode

sudo apt-get install -y usb-modeswitch

sudo cat > /etc/usb_modeswitch.conf <<- EOM
DefaultVendor=0x12d1
DefaultProduct=0x14fe

TargetVendor=0x12d1
TargetProduct=0x1506

MessageContent = "55534243000000000000000000000011060000000000000000 000000000000"
MessageContent2="5553424312345679000000000000061b000000020000000000000000000000"
MessageContent3="55534243123456702000000080000c85010101180101010101000000000000"
EOM

echo "sudo usb_modeswitch -c /etc/usb_modeswitch.conf" >> ~/.bashrc



# setup the software that connects the dongle

sudo wget "http://downloads.sourceforge.net/project/vim-n4n0/sakis3g.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fvim-n4n0%2Ffiles%2F&ts=1363537696&use_mirror=tene~t" -O sakis3g.tar.gz
sudo tar -xzvf sakis36.tar.gz
sudo chmod +x sakis3g


# setup the software that keeps the connection open

sudo mkdir umtskeeper
cd umtskeeper
sudo wget "http://zool33.uni-graz.at/petz/umtskeeper/src/umtskeeper.tar.gz"
sudo tar -xzvf umtskeeper.gz
sudo chmod +x umtskeeper

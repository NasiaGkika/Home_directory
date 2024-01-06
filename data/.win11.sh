#!/bin/bash

echo
echo "Starting ..."
echo "Give the UNIX password whenever asked for a password"
echo
sleep 2

sudo rm /etc/resolv.conf
sudo bash -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf'
sudo bash -c 'echo "[network]" > /etc/wsl.conf'
sudo bash -c 'echo "generateResolvConf = false" >> /etc/wsl.conf'
sudo chattr +i /etc/resolv.conf

sudo apt-get -y update

echo '* libraries/restart-without-asking boolean true' | sudo debconf-set-selections

sudo apt-get -y install gcc
sudo apt-get -y install nano
sudo apt-get -y install vim

sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt-get -y update

sudo apt -y install fish
sudo apt -y install python3
sudo apt -y install git

cd
wget http://utopia.duth.gr/glykos/linux/winbash.tar
tar xvf winbash.tar
rm winbash.tar
mv winbash.sh data/.winbash.sh

mkdir .local
mkdir .local/share

sudo apt clean

cd
mv .bashrc .bashrc_PREV
wget http://utopia.duth.gr/glykos/linux/advanced_win11.tar
tar xvf advanced_win11.tar
rm advanced_win11.tar

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

chsh -s /usr/bin/fish

fish -c '~/.fzf/install --all'

mv .bashrc .bashrc_fish
mv .bashrc_PREV .bashrc

mv win11.sh data/.win11.sh

echo 
echo 
echo "All done."
echo
echo


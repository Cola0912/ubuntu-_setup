#!/bin/bash
##ubuntuの初期設定用　これ走らせればとりあえずいつも使ってる環境に近づく

sudo apt update
sudo apt upgrade -y
LANG=C xdg-user-dirs-gtk-update
echo "Hello World"
echo "export PS1='\[\e[01;32m\]\u@\h\[\e[00m\] \e[1;35m\t \[\e[01;34m\]\w\[\e[00m\]\n\[\e[1;36m\]$\[\e[37m\]'" >> ~/.bashrc
echo "alias lsdev='echo "by-id is" && ls //dev/serial/by-id/* && echo -e "\nby-path is" && ls //dev/serial/by-path/*'" >> ~/.bashrc
echo "alias updg='echo sudo apt update && sudo apt upgrade -y'" >> ~/.bashrc
echo "alias discoupg='wget https://discord.com/api/download/stable\?platform\=linux\&format\=deb -O /tmp/discord-update.deb && sudo apt install -y /tmp/discord-update.deb'" >> ~/.bashrc
source ./.bashrc

##よく使う物のインストール
sudo apt install -y git python3 ssh gcc nano vim translate-shell snap curl blender freecad

touch ~/.nanorc
echo "set linenumbers" >> ~/.nanorc

##CIT　wifi下での時刻設定 
## 2024年度から必要なくなった
##echo "curl -sfLk https://git.io/set_date | sh" >> ~/.bashrc

##VScodeのインストール
## sudo snap install --classic code

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
rm -f packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code


wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get update
sudo apt-get -y install cuda-toolkit-12-5
sudo apt-get install -y cuda-drivers

##chromeのインストール
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

##discodeのインストールとアップデート
wget https://discord.com/api/download/stable\?platform\=linux\&format\=deb -O /tmp/discord-update.deb && sudo apt install -y /tmp/discord-update.deb


##install howdy 顔認証のやつ
#sudo apt-get install -y v4l-utils
#sudo add-apt-repository ppa:boltgolt/howdy
#sudo apt update -y
#sudo apt install howdy -y

##CIT wifi下でのgitのSSH設定
##mkdir .ssh
##touch ~/.ssh config
##echo "host github.com
##	Hostname ssh.github.com
##	User git
##	Port 443
##	IdentityFile ~/.ssh/id_rsa" >> ~/.ssh/config

##キーボードショートカットに追加
## gnome-session-quit --power-off
## gnome-session-quit --reboot
 

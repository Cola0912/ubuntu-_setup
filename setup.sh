#!/bin/bash
##ubuntuの初期設定用　これ走らせればとりあえずいつも使ってる環境に近づく

sudo apt update
sudo apt upgrade -y
echo "Hello World"
echo "export PS1='\[\e[01;32m\]\u@\h\[\e[00m\] \e[1;35m\t \[\e[01;34m\]\w\[\e[00m\]\n\[\e[1;36m\]$\[\e[37m\]'" >> ~/.bashrc
echo "alias lsdev='echo "by-id is" && ls //dev/serial/by-id/* && echo -e "\nby-path is" && ls //dev/serial/by-path/*'" >> ~/.bashrc
echo "alias updg='echo sudo apt update && sudo apt upgrade -y'" >> ~/.bashrc
echo "alias discoupg='wget https://discord.com/api/download/stable\?platform\=linux\&format\=deb -O /tmp/discord-update.deb && sudo apt install -y /tmp/discord-update.deb'" >> ~/.bashrc
source ./.bashrc

##よく使う物のインストール
sudo apt install -y git python3 ssh gcc nano vim translate-shell snap curl blender freecad

##CIT　wifi下での時刻設定 
## 2024年度から必要なくなった
##echo "curl -sfLk https://git.io/set_date | sh" >> ~/.bashrc

##VScodeのインストール
sudo snap install --classic code

##chromeのインストール
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

##discodeのインストールとアップデート
wget https://discord.com/api/download/stable\?platform\=linux\&format\=deb -O /tmp/discord-update.deb && sudo apt install -y /tmp/discord-update.deb

##install howdy 顔認証のやつ
sudo apt-get install -y v4l-utils
sudo add-apt-repository ppa:boltgolt/howdy
sudo apt update -y
sudo apt install howdy -y

##CIT wifi下でのgitのSSH設定
##mkdir .ssh
##touch ~/.ssh config
##echo "host github.com
##	Hostname ssh.github.com
##	User git
##	Port 443
##	IdentityFile ~/.ssh/id_rsa" >> ~/.ssh/config
 

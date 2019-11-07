## Ubuntu install script
```
add-apt-repository ppa:jonathonf/vim
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt update
apt install vim nodejs autojump inotify-tools supervisor
echo "======= install fzf ========"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && cd .fzf && ./install
echo "======= install bat ========"
curl https://github.com/sharkdp/bat/releases/download/v0.12.1/bat_0.12.1_amd64.deb -o /root/bat_0.12.1_amd64.deb | dpkg -i /root/bat_0.12.1_amd64.deb
echo "======= set timezone ========"
timedatectl set-timezone Asia/Shanghai
echo "======= set startup ========"
systemctl enable supervisor docker
```

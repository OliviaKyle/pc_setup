# apt update
sudo apt update

# git
sudo apt-get install -y git

# steam
sudo apt-get install -y steam

# vscode 
sudo snap install vscode

# spotify
sudo snap install spotify

# Brave Browser
sudo apt install -y apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# App Image Launcher
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt-get update
sudo apt-get install -y appimagelauncher

# docker
sudo apt-get update
sudo apt-get -y install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io


# flameshot
sudo apt-get install -y flameshot

# xbindkeys
sudo apt-get install -y xbindkeys

# set up dotfiles
find "$(pwd)/dotfiles" -type f -exec ln -s {} ~ \;

# Razer drivers
sudo gpasswd -a $USER plugdev
sudo apt install -y software-properties-gtk
sudo add-apt-repository ppa:openrazer/stable
sudo apt update
sudo apt install -y openrazer-meta

# and the razer gui
sudo add-apt-repository ppa:polychromatic/stable
sudo apt update

sudo apt install -y polychromatic

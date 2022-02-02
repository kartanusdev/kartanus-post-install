# --------------------------------------------------// User information //--------------------------------------------------
echo Enter your username: 
read username 

# --------------------------------------------------// Updates and upgrade //--------------------------------------------------
sudo apt update -y; sudo apt upgrade -y; sudo apt dist-upgrade -y
sudo apt install snapd -y

# --------------------------------------------------// Tools //--------------------------------------------------
sudo apt-get install wget curl gcc make -y
sudo apt install software-properties-common apt-transport-https wget -y
sudo apt-get install gnome-tweak-tool -y
sudo apt-get install ubuntu-restricted-extras -y
sudo apt-get install openjdk-11-jdk -y

sudo apt install git -y
sudo apt-get install openjdk-11-jdk -y

# --------------------------------------------------// Software //--------------------------------------------------
# Vscode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y

# Color picker
sudo snap install color-picker

# Spotify
sudo snap install spotify

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y; sudo apt-get install sublime-text

# Atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update -y; sudo apt install atom -y

# Wine
sudo apt-get install wine64 -y

# Google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Typora
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora -y

cp -R ~/kartanus-post-install/Customization/Typora/notes-dark ~/.config/Typora/themes
cp -R ~/kartanus-post-install/Customization/Typora/notes-dark.css ~/.config/Typora/themes

# Vim
sudo apt install vim -y

# Neovim
sudo apt install neovim -y

# Play on linux
sudo apt-get install playonlinux -y

# Steam
sudo apt-get install steam-installer -y

# Vlc
sudo snap install vlc

# Zoom
sudo snap install zoom-client

# Virtualbox
sudo apt install virtualbox -y
sudo apt-get install software-properties-common -y
sudo apt-get install virtualbox-ext-pack
sudo apt update -y

# Okular (PDF)
sudo apt-get install okular -y

# Bitwarden
sudo snap install bitwarden

# Node v16
sudo apt update -y
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

# Yarn
npm install --global yarn

# --------------------------------------------------// Customization //--------------------------------------------------
sudo apt-get install gnome-tweaks -y
sudo apt-get install gnome-shell-extensions -y

mkdir ~/.themes && mkdir ~/.icons
mv -v ~/kartanus-post-install/Customization/parcatheme/ ~/.themes
mv -v ~/kartanus-post-install/Customization/parcacursor/ ~/.icons
mv -v ~/kartanus-post-install/Customization/McMojave-circle-red ~/.icons
mv -v ~/kartanus-post-install/Customization/McMojave-circle-red-dark ~/.icons

sudo cp -R ~/kartanus-post-install/Media/bg-image1.jpg //usr/share/backgrounds/
gsettings set org.gnome.desktop.background picture-uri  file:////usr/share/backgrounds/bg-image1.jpg

# --------------------------------------------------// Install fonts //--------------------------------------------------
mkdir /home/$username/.fontconfig 
sudo cp -v ~/kartanus-post-install/Fonts/FantasqueSansMono/* ~/.fontconfig/

# --------------------------------------------------// Repair errors //--------------------------------------------------
sudo killall snap-store
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get clean
sudo rm *.deb
echo "Downloading GetDeb and PlayDeb" &&
wget http://archive.getdeb.net/install_deb/getdeb-repository_0.1-1~getdeb1_all.deb http://archive.getdeb.net/install_deb/playdeb_0.3-1~getdeb1_all.deb &&

echo "Installing GetDeb" &&
sudo dpkg -i getdeb-repository_0.1-1~getdeb1_all.deb &&

echo "Installing PlayDeb" &&
sudo dpkg -i playdeb_0.3-1~getdeb1_all.deb &&

echo "Deleting Downloads" &&
rm -f getdeb-repository_0.1-1~getdeb1_all.deb &&
rm -f playdeb_0.3-1~getdeb1_all.deb &&

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - &&
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stablec main" >> /etc/apt/sources.list.d/google-chrome.list' &&

sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable &&
sudo add-apt-repository -y ppa:videolan/stable-daily &&
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp &&
sudo add-apt-repository -y ppa:gnome3-team/gnome3 &&
sudo add-apt-repository -y ppa:webupd8team/java &&
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager &&
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3 &&
sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder &&
sudo add-apt-repository -y ppa:webupd8team/atom &&
sudo add-apt-repository -y ppa:git-core/ppa &&
sudo apt-add-repository -y ppa:chris-lea/node.js &&
sudo add-apt-repository -y ppa:libreoffice/ppa &&
sudo add-apt-repository -y ppa:andykimpe/skype

echo 'deb http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
echo 'deb-src http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc|sudo apt-key add - &&

sudo apt-get install libxss1 libappindicator1 libindicator7 &&
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i google-chrome*.deb &&

sudo apt-get install atom chromium-browser filezilla wine simplescreenrecorder qt4-qtconfig golang mercurial qbittorrent synaptic vlc gimp gimp-data gimp-plugin-registry gimp-data-extras y-ppa-manager bleachbit openjdk-7-jre oracle-java8-installer icedtea-7-plugin openjdk-7-jre:i386 flashplugin-installer unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller libxine1-ffmpeg mencoder flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview libmpeg3-1 mpeg3-utils mpegdemux liba52-dev mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 totem-mozilla icedax lame libmad0 libjpeg-progs libdvdcss2 libdvdread4 libdvdnav4 libswscale-extra-2 ubuntu-restricted-extras ubuntu-wallpapers* skype-wrapper git curl libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev build-essential &&

sudo apt-get dist-upgrade &&
#git config --global user.name "NewUser"
#git config --global user.email newuser@example.com

echo "Set font for Qt applications" &&
qtconfig-qt4 &&

echo "Installation of Node Version Manager" &&
git clone git://github.com/creationix/nvm.git ~/.nvm &&
printf "\n\n# NVM\nif [ -s ~/.nvm/nvm.sh ]; then\n\tNVM_DIR=~/.nvm\n\tsource ~/.nvm/nvm.sh\nfi" >> ~/.bashrc &&
NVM_DIR=~/.nvm &&
source ~/.nvm/nvm.sh &&

echo "Installation of Nodejs" &&
sudo apt-get install nodejs &&
nvm install v0.12.0 &&

echo "Installation of MeteorJS" &&
curl https://install.meteor.com | /bin/sh &&

gsettings set com.canonical.Unity.Launcher favorites "['nautilus-home.desktop', 'google-chrome.desktop', 'chromium-browser.desktop', 'gnome-terminal.desktop', 'ubuntu-software-center.desktop', 'gnome-control-center.desktop', 'qBittorrent.desktop', 'skype.desktop', '.desktop', 'sublime_text.desktop', 'jetbrains-phpstorm.desktop', 'Atom.desktop', 'brackets.desktop']
" &&

echo "Installation of Ruby stable last & Rubygems & Ruby Version Manager" &&
curl -sSL https://get.rvm.io | bash -s stable --ruby &&
sudo apt-get install rubygems &&

echo "Installation of SSHPASS" &&
sudo apt-get install sshpass &&

echo "Install Ubuntu-Tweak" &&
sudo add-apt-repository ppa:tualatrix/ppa  &&
sudo apt-get update  &&
sudo apt-get install ubuntu-tweak  &&

echo "Install Sublime 3 3065" &&
wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3047_amd64.deb &&
sudo dpkg -i sublime-text*.deb

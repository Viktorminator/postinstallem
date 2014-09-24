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
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' &&

sudo add-apt-repository ppa:hydr0g3n/qbittorrent-stable &&
sudo add-apt-repository -y ppa:videolan/stable-daily &&
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp &&
sudo add-apt-repository -y ppa:gnome3-team/gnome3 &&
sudo add-apt-repository -y ppa:webupd8team/java &&
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager &&
sudo add-apt-repository -y ppa:atareao/sunflower &&
sudo add-apt-repository -y ppa:webupd8team/brackets &&


echo 'deb http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
echo 'deb-src http://download.videolan.org/pub/debian/stable/ /' | sudo tee -a /etc/apt/sources.list.d/libdvdcss.list &&
wget -O - http://download.videolan.org/pub/debian/videolan-apt.asc|sudo apt-key add - &&

sudo apt-get update &&

sudo apt-get install brackets qt4-qtconfig git golang google-chrome-stable mercurial qbittorrent sunflower synaptic vlc gimp gimp-data gimp-plugin-registry gimp-data-extras y-ppa-manager bleachbit openjdk-7-jre oracle-java8-installer flashplugin-installer unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller libxine1-ffmpeg mencoder flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview libmpeg3-1 mpeg3-utils mpegdemux liba52-dev mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 totem-mozilla icedax lame libmad0 libjpeg-progs libdvdcss2 libdvdread4 libdvdnav4 libswscale-extra-2 ubuntu-restricted-extras ubuntu-wallpapers* &&

echo "Set font for Qt applications" &&
qtconfig-qt4 &&

echo "Installation of Node Version Manager" &&
git clone git://github.com/creationix/nvm.git ~/.nvm &&
printf "\n\n# NVM\nif [ -s ~/.nvm/nvm.sh ]; then\n\tNVM_DIR=~/.nvm\n\tsource ~/.nvm/nvm.sh\nfi" >> ~/.bashrc &&
NVM_DIR=~/.nvm &&
source ~/.nvm/nvm.sh &&

echo "Installation of Nodejs" &&
nvm install v0.10.32 &&
nvm alias default 0.10 &&
nvm use 0.10 &&

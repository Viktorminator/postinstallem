Postinstallem
=============

Ubuntu 14.10 for Web-developers post install scripts

Most of commands was taken from HowTo http://howtoubuntu.org/things-to-do-after-installing-ubuntu-14-04-trusty-tahr


##Curl

```
sudo apt-get install curl
```

##Atom.io

```
sudo add-apt-repository ppa:webupd8team/atom &&
sudo apt-get update &&
sudo apt-get install atom
```

##Brackets.io

http://brackets.io
```
sudo add-apt-repository -y ppa:webupd8team/brackets &&
sudo apt-get update &&
sudo apt-get install brackets
```

##PhpStorm

##Sublime Text 3

```
sudo add-apt-repository ppa:webupd8team/sublime-text-3 && 
sudo apt-get update && 
sudo apt-get install sublime-text-installer
```

##Git

```
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
```

##GitHub
First start by setting up your own public/private key pair set. This can use either dsa or rsa, so basically any key you setup will work. On most systems you can use ssh-keygen.

But first you want to make sure you cd into your .ssh directory. Open up the terminal and run:
```
cd ~/.ssh && ssh-keygen
```
next you need to copy this to your clipboard.

```
cat id_rsa.pub | xclip
```
Add your key to your account via the website.
finally setup your git config
```
git config --global user.name "bob"
git config --global user.email bob@... 
```
Now you are ready to clone and checkout. Don't forget to restart terminal.

##Simple screen recorder

SimpleScreenRecorder is a Linux program to record programs and games.
```bash
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder &&
sudo apt-get update &&
sudo apt-get install simplescreenrecorder
# if you want to record 32-bit OpenGL applications on a 64-bit system:
sudo apt-get install simplescreenrecorder-lib:i386
```

##Install NVM
For installing nodejs with Node Version Manager at first you need to install build-essentials:
```
sudo apt-get install build-essential libssl-dev
```
Next go to github page of NVM to get the latest version https://github.com/creationix/nvm
```
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash
```

##Install NodeJs with NPM
Install NodeJS with curl & executing script.
Check the latest version and install it with NVM:
```
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install nodejs
nvm install v0.12.0
```
You will have several versions of NodeJS, if you want to use some by default run in CLI:
```
nvm alias default 0.12.0
```

##Yeoman

With just a command or two, [Yeoman](http://yeoman.io/codelab/meet-yeoman.html) can write boilerplate code for your entire web application or individual pieces like Controllers and Models. Yeoman can fire up a preview web server and watch your files for edits in order to live reload changes and compile your Sass. Yeoman can also run your unit tests, minimize and concatenate your code, optimize images, plus more!

```bash
npm install --global yo
```
##Google Fonts (!Don't Install it - chrome will have broken fonts)

```bash
cd && wget http://webupd8.googlecode.com/files/install-google-fonts
chmod +x install-google-fonts
./install-google-fonts
```
or simpler way
```
curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | sh
```

##Install Ruby, Rubygems, RVM
Here you can try alternative [RVM installs](http://rvm.io/rvm/install)
Here you can check [commands for RVM](http://rvm.io/rubies/default)
```
source /home/user/.rvm/scripts/rvm
rvm list
rvm use 2.1.3
```
##Install Jekyll
```
sudo apt-get install ruby ruby-dev make
sudo gem install jekyll --no-rdoc --no-ri
```

##Install PhantomJS
```
cd /usr/local/share
sudo wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2
sudo tar xjf phantomjs-1.9.7-linux-x86_64.tar.bz2
sudo ln -s /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/share/phantomjs
sudo ln -s /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs
sudo ln -s /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/bin/phantomjs
```
##Install MongoDBImport
```
sudo apt-get install mongodb-clients
```

##Qbittorrent
Set Qbittorrent as default magnet links opener
```
xdg-mime default qBittorent.desktop x-scheme-handler/magnet
gvfs-mime --set x-scheme-handler/magnet qBittorrent.desktop
```
##Install Ruby
Install prerequisite libraries:
```
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
```
Install rbenv, which is used to install Ruby
```
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.2.0
rbenv global 2.2.0
ruby -v
```
Credits: https://gorails.com/setup/ubuntu/14.10

##Install Typecatcher for Google Fonts & Gimp

```
sudo add-apt-repository -y ppa:andrewsomething/typecatcher
sudo apt-get update
sudo apt-get install typecatcher
```

##Update LibreOffice
```
sudo add-apt-repository -y ppa:libreoffice/ppa
sudo apt-get update
sudo apt-get dist-upgrade
```
##Wine
Installation of Wine make from Y-PPA-Manager - find your version and Install.

Installation of different windows-support packages
```
winetricks atmlib gdiplus msxml3 msxml6 vcrun2005 vcrun2005sp1 vcrun2008 ie6 fontsmooth-rgb gecko
```
##Nemo
```
sudo add-apt-repository ppa:webupd8team/nemo
sudo apt-get update
sudo apt-get install nemo nemo-fileroller
```
##PlayOnLinux
```
wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
sudo wget http://deb.playonlinux.com/playonlinux_trusty.list -O /etc/apt/sources.list.d/playonlinux.list
sudo apt-get update
sudo apt-get install playonlinux
```
##Customization
###Folder Color
Custom colors for Nautilus
```
sudo add-apt-repository ppa:costales/folder-color
sudo apt-get update
sudo apt-get install folder-color
```
Same for Nemo
```
sudo add-apt-repository ppa:costales/folder-color
sudo apt-get update
sudo apt-get install python-nemo libgtk2.0-bin folder-color-nemo
```
###Installing Faensa Icons
```
sudo add-apt-repository ppa:tiheum/equinox
sudo apt-get update
sudo apt-get install faenza-icon-theme
```


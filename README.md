Postinstallem
=============

Ubuntu 14.04 &amp; etc post install scripts

Most of commands was taken from HowTo http://howtoubuntu.org/things-to-do-after-installing-ubuntu-14-04-trusty-tahr


#Other downloads

##Atom.io

https://github.com/atom/atom/releases/tag/v0.131.0

##Brackets.io

http://brackets.io

##PhpStorm

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
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
sudo apt-get update
sudo apt-get install simplescreenrecorder
# if you want to record 32-bit OpenGL applications on a 64-bit system:
sudo apt-get install simplescreenrecorder-lib:i386
```
##Yeoman

With just a command or two, [Yeoman](http://yeoman.io/codelab/meet-yeoman.html) can write boilerplate code for your entire web application or individual pieces like Controllers and Models. Yeoman can fire up a preview web server and watch your files for edits in order to live reload changes and compile your Sass. Yeoman can also run your unit tests, minimize and concatenate your code, optimize images, plus more!

```bash
npm install --global yo
```
##Google Fonts

```bash
cd && wget http://webupd8.googlecode.com/files/install-google-fonts
chmod +x install-google-fonts
./install-google-fonts
```

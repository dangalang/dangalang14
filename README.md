# README
Hello World!
![wallpaper](.config/wall.png)

## Installation
The following are the steps required to get a fresh Ubuntu build configured to my dot files.  Prior to installation be sure to install the following packages to ensure you are able to install everything correctly.

```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git autoconf vim python3-pip glances
pip3 install --upgrate pip
```

### i3-Gaps
The following steps are taken directly from the i3-Gaps documentation and installation instructions:

#### Dependencies
##### Ubuntu
###### 16.10
```
sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake
```

#### Installation of Source code
```
cd /path/where/you/want/the/repository

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
```
If you haven't installed i3 before, you will likely get compilation errors due to missing packages. To solve that, install all required dependencies as listed in the section below and rerun 
> make && sudo make install

#### Configuration

### pyWal
#### Installation
```
pip3 install pywal
```

### ViM
#### Configuration
[Download ViM plugin](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim) and put it in the "autoload" directory

copy the [.vimrc](https://raw.githubusercontent.com/dangalang/dangalang14/master/.vimrc) file into the HOME directory

### uRXVT
#### Installation
```
sudo apt-get install rxvt-unicode'
```

#### Configuration
Grab the [.Xresources](https://raw.githubusercontent.com/dangalang/dangalang14/blob/master/.Xresources) file and load it with
```
xrdb ~/.Xresources
```

### Neofetch
#### Installation
```
echo "deb http://dl.bintray.com/dawidd6/neofetch jessie main" | sudo tee -a /etc/apt/sources.list
curl -k "https://bintray.com/user/downloadSubjectPublicKey?username=bintray"| sudo apt-key add -
sudo apt-get update
sudo apt-get install neofetch
```
#### Configuration
Grab the [config.conf](https://raw.githubusercontent.com/dangalang/dangalang14/master/.config/neofetch/config.conf) file and put it in the ~/.config/neofetch/ folder

### Ranger
#### Installation
```
sudo apt-get install ranger
```
#### Configuration

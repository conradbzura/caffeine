#!/bin/bash

###################################################################################
# DEFINE FUNCTIONS

print_usage() {
echo -e "Usage:"
echo -e "    install.sh <directory>"
echo -e "Args:"
echo -e "    <directory>"
echo -e "        Optional argument defining installation directory. Default location is '"$HOME"/caffeine'."
exit
}

###################################################################################
# DEFINE INSTALLATION DIRECTORY

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
INSTALL_DIR=$HOME"/caffeine"
export CAFFEINE=$INSTALL_DIR"/.caffeine"
export CAFFEINERC=$INSTALL_DIR"/.caffeinerc"

if [ $# -eq 0 ]; then
    echo "Using default installation directory: '"$INSTALL_DIR"'"
    if [ ! -d "$INSTALL_DIR" ]; then
        echo "Default install directory '"$INSTALL_DIR"' does not exist, creating it now."
        mkdir $INSTALL_DIR
    fi
elif [ $# -eq 1 ]; then
    INSTALL_DIR=${1%/}
    if [ ! -d "$INSTALL_DIR" ]; then
        echo "Directory '"$INSTALL_DIR"' does not exist."
        print_usage
        echo "Exiting..."
        exit
    fi
    echo "Using the specified installation directory: '"$INSTALL_DIR"'"
else
    echo "Too many arguments!"
    print_usage
    echo "Exiting..."
    exit
fi

###################################################################################
# DEFINE PACKAGE MANAGER AND DEPENDENCIES

SYSTEM_PACKAGE_TYPE="deb"
SYSTEM_PACKAGE_MANAGER="apt-get"
SYSTEM_PACKAGE_MANAGER_UPDATE="apt-get update"
SYSTEM_PACKAGE_MANAGER_INSTALL="apt-get -y install"

DEPENDENCIES="\
	wget
	git \
	vim-gtk \
	clang-3.8 \
	clang-format-3.8 \
	libclang-3.8-dev \
	libc++-dev \
    libc++abi-dev \
    ctags \
	cmake \
	python-dev \
	python3-dev \
"

###################################################################################
# PROMPT USER FOR PASSWORD

CURRENT_USER=`whoami`
echo -n "Enter password for $CURRENT_USER:"
ORIGINAL_STTY=`stty -g`
stty -echo
read password
stty $ORIGINAL_STTY

###################################################################################
# CREATE DESKTOP, TERMINAL, AND APPLICATION MENU SHORTCUTS

#TODO the sed command below is broken (only works for a single install), should
# create temporary desktop file and modify that instead
sed -i '/^Exec=/ s\$\ -u '"$INSTALL_DIR"'/.caffeinerc\' $CURRENT_DIR/resources/caffeine.desktop
caffeine_alias=`grep -w "Exec" $CURRENT_DIR/resources/caffeine.desktop | sed s/Exec=//`
echo "# Caffeine alias" >> $HOME/.bashrc
echo "alias caffeine=\""$caffeine_alias"\"" >> $HOME/.bashrc
echo "# Caffeine home directory" >> $HOME/.bashrc
echo "export CAFFEINE="$INSTALL_DIR"/.caffeine" >> $HOME/.bashrc
echo "# Caffeine rc file" >> $HOME/.bashrc
echo "export CAFFEINERC="$INSTALL_DIR"/.caffeinerc" >> $HOME/.bashrc
source $HOME/.bashrc

###################################################################################
# CREATE DIRECTORY STRUCTURE AND COPY FILES

echo -e "\n"
echo "----------------------------------------------------------------------------"
echo "Creating directory structure and copying files..."
echo "----------------------------------------------------------------------------"

cp -R $CURRENT_DIR/.caffeine $INSTALL_DIR/
cp $CURRENT_DIR/.caffeinerc $INSTALL_DIR

###################################################################################
# INSTALL DEPENDENCIES

echo -e "\n"
echo "----------------------------------------------------------------------------"
echo "Installing dependencies..."
echo "----------------------------------------------------------------------------"

echo "$password" | sudo -S $SYSTEM_PACKAGE_MANAGER_UPDATE
echo "$password" | sudo -S $SYSTEM_PACKAGE_MANAGER_INSTALL $DEPENDENCIES

mkdir -p $HOME/.fonts
git clone https://github.com/powerline/fonts.git $HOME/.fonts
fc-cache -vf $HOME/.fonts

###################################################################################
# INSTALL VIM PLUGINS

echo -e "\n"
echo "----------------------------------------------------------------------------"
echo "Installing plugins..."
echo "----------------------------------------------------------------------------"
git clone https://github.com/VundleVim/Vundle.vim.git $CAFFEINE/bundle/Vundle
vim -u $CAFFEINERC +PluginInstall +qall

mkdir -p $CURRENT_DIR/.tmp/ycm/llvm
cd $CURRENT_DIR/.tmp/ycm/llvm

#wget http://llvm.org/releases/3.8.0/clang+llvm-3.8.0-x86_64-linux-gnu-ubuntu-14.04.tar.xz

#tar -xvf clang+llvm-3.8.0-x86_64-linux-gnu-ubuntu-14.04.tar.xz

cd ..

cmake -G "Unix Makefiles" -DEXTERNAL_LIBCLANG_PATH=/usr/lib/llvm-3.8/lib/libclang-3.8.so.1 . $CAFFEINE/bundle/YouCompleteMe/third_party/ycmd/cpp

cmake --build . --target ycm_core

rm -rf $CURRENT_DIR/.tmp

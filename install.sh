#!/bin/bash

###################################################################################
# DEFINE FUNCTIONS

print_usage() {
echo -e "Usage:"
echo -e "    install.sh <directory>"
echo -e "Args:"
echo -e "    <directory>"
echo -e "        Optional argument defining installation directory. Default location is '"$INSTALL_DIR_DEFAULT"'."
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
elif [ $# -eq 1 ]; then
    INSTALL_DIR=${1%/}
    if [ ! -d INSTALL_DIR ]; then
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

DEPENDENCIES="git vim-gtk clang-3.8 clang-format-3.8 lldb-3.8 ctags"

###################################################################################
# PROMPT USER FOR PASSWORD

CURRENT_USER=`whoami`
echo -n "Enter password for $CURRENT_USER:"
ORIGINAL_STTY=`stty -g`
stty -echo
read password
stty $ORIGINAL_STTY

###################################################################################
# CREATE DIRECTORY STRUCTURE AND COPY FILES

echo -e "\n"
echo "----------------------------------------------------------------------------"
echo "Creating directory structure and copying files..."
echo "----------------------------------------------------------------------------"

echo "$password" | sudo -S cp -R $CURRENT_DIR/.caffeine $INSTALL_DIR/
echo "$password" | sudo -S cp $CURRENT_DIR/.caffeinerc $INSTALL_DIR

###################################################################################
# INSTALL DEPENDENCIES

echo -e "\n"
echo "----------------------------------------------------------------------------"
echo "Installing dependencies..."
echo "----------------------------------------------------------------------------"

echo "$password" | sudo -S $SYSTEM_PACKAGE_MANAGER_UPDATE
echo "$password" | sudo -S $SYSTEM_PACKAGE_MANAGER_INSTALL $DEPENDENCIES

mkdir -p $HOME/.fonts
git clone https://github.com/Lokaltog/powerline-fonts.git $HOME/.fonts
fc-cache -vf $HOME/.fonts

#TODO build YCM

echo $CAFFEINE
echo $CURRENT_DIR
echo $INSTALL_DIR

###################################################################################
# INSTALL VIM PLUGINS

echo -e "\n"
echo "----------------------------------------------------------------------------"
echo "Installing plugins..."
echo "----------------------------------------------------------------------------"

echo "$password" | sudo -S git clone https://github.com/VundleVim/Vundle.vim.git $CAFFEINE/bundle/Vundle
vim -u $CAFFEINERC +PluginInstall +qall


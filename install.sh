#!/bin/bash

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd)

set -e

# 颜色定义
dark='\033[0;30m'
dange='\033[0;31m'
primary='\033[0;32m'
warn='\033[0;33m'
info='\033[0;34m'
secondary='\033[0;35m'
cyan='\033[0;36m'
light='\033[0;37m'

end='\033[0m'

echo ""
echo " ---------------------------------------------- "
echo "|              /)          /)       ,          |"
echo "|             (/      __  (/                   |"
echo "|          (__/ )_(_(_/ (_/ )_(_(__(_          |"
echo "|                                              |"
echo "| Author: Ren Chunhui                          |"
echo "| repo  : https://github.com/renchunhui        |"
echo "| E-mail: renchunhui2008@gmail.com             |"
echo " ---------------------------------------------- "
echo ""

# 提示信息
info() {
  printf "${info}$1...${end}\n"
}

# 安装 Homebrew
install_homebrew() {
  if !(which brew)
  then
    info "安装 Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
}

# 安装 oh_my_zsh
install_ohmyzsh() {
  if [ ! -d ~/.oh-my-zsh ]
  then
    info "安装 oh-my-zsh & zsh-syntax-highlighting"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    brew install zsh-syntax-highlighting
  fi
}

# 安装 Tmux
install_tmux() {
  if !(which tmux)
  then
    info "安装 Tmux"
    brew install tmux
  fi
}

# Brew 安装
brew_install() {
  brew install vim --with-override-system-vi
}

install_dotfiles() {
  info "软链配置文件"
  ln -s ~/.dotfiles/.vimrc ~/.vimrc
  ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
}


install_homebrew
install_ohmyzsh
install_tmux
brew_install
install_dotfiles

info "安装完成!"

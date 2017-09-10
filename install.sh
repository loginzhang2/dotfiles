#!/bin/bash

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
printf "${dark}----------------------------------------------${end}\n"
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

read -r -p "一键安装 iTerm2+zsh+tmux+vim 环境，确定安装? [Y/n] " input

case $input in
[yY][eE][sS]|[yY])
  install_homebrew
  install_ohmyzsh
  install_tmux
  install_iterm
  override_vim
  ;;
[nN][oO]|[nN])
  echo '取消安装'
  exit 1
  ;;
esac

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
  if [ ! -d "~/.oh-my-zsh"]
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

# 安装 iTerm2
install_iterm {
  if !(which iterm)
  then
    info "安装 iTerm2"
    brew install iTerm2
  fi
}

# override vim
override_vim() {
  info "升级系统默认 Vim"
  brew install vim --with-override-system-vi
}

install_dotfiles() {

}

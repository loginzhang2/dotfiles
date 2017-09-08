#! Homebrew 安装
echo "Homebrew 安装"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#! Tmux 安装
brew install tmux
#! Vim
brew install vim --with-override-systme-vim

#! 软链接
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/.vimrc ~/.vimrc

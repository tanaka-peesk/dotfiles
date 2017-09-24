if [ -e ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc.org
fi
if [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.org
fi
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
mkdir -p ~/.vim/dein ~/.vim/cache
wget -P ~/ https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh
sh ~/installer.sh ~/.vim/dein
rm ~/installer.sh

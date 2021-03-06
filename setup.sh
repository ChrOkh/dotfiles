touch ~/.bashrc
cp ~/.bashrc ~/.bashrc.backup
echo "source ~/bin/dotfiles/bashrc" > ~/.bashrc

touch ~/.tmux.conf
cp ~/.tmux.conf ~/.tmux.conf.backup
echo "source ~/bin/dotfiles/tmux.conf" > ~/.tmux.conf

touch ~/.zshrc
cp ~/.zshrc ~/.zshrc.backup
echo "source ~/bin/dotfiles/zshrc" > ~/.zshrc

touch ~/.vimrc
cp ~/.vimrc ~/.vimrc.backup
echo "source ~/bin/dotfiles/vimrc" > ~/.vimrc

# Install base16-shell for shell color management
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

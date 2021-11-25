echo 'oh-my-zsh install'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo 'zsh themes install'
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

echo 'zplug install'
#curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh\
sudo apt install zplug
# NB! zplug install problem (no *zplug* command available after install)

#echo 'add Extra Packages repo for Enterprise Linux (EPEL) as package'
#sudo dnf install epel

echo 'install hstr'
sudo add-apt-repository ppa:ultradvorka/ppa
sudo apt-get update
sudo apt install hstr

echo 'install vim and deploy config to the current user dir'
#--> already installed by default
#sudo apt install vim 
cp -v  ~/.vimrc ~/.vimrc.default.backup
cp -v ./.vimrc ~/

echo 'deploy specific .zshrc to the current user dir'
cp -v ~/.zshrc ~/.zshrc.default.backup
cp -v ./.zshrc ~/

echo 'install packages needed from .zshrc --> like fzf for zsh-interactive-cd'
sudo apt install fzf

# UNAPLICABLE .bashrc (Fedora version) --> for the moment
#echo 'deploy specific .bashrc to the current user dir'
#cp -v ~/.bashrc ~/.bashrc.default.backup
#cp -v ./.bashrc ~/

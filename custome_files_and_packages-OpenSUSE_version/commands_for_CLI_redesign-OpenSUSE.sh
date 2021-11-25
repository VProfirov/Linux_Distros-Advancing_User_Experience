echo 'install zsh'
sudo zypper install zsh

echo 'install git'
sudo zypper install git

echo 'oh-my-zsh install'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo 'zsh themes install'
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo 'zplug install'
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
#sudo zypper install zplug

echo 'install hstr'
echo 'you might need to add the repo version for the distribution version --> instead of 15.3 --> TODO: sub-script for current version'

#sudo zypper addrepo https://download.opensuse.org/repositories/home:lemmy04/openSUSE_Leap_15.3/home:lemmy04.repo

sudo zypper addrepo https://download.opensuse.org/repositories/home:nad1r/openSUSE_Leap_15.2/home:nad1r.repo
sudo zypper refresh
sudo zypper install hstr

echo 'install vim and deploy config to the current user dir'
#sudo zypper install vim
cp -v  ~/.vimrc ~/.vimrc.default.backup
cp -v ./.vimrc ~/

echo 'deploy specific .zshrc to the current user dir'
cp -v ~/.zshrc ~/.zshrc.default.backup
cp -v ./.zshrc ~/

echo 'deploy specific .bashrc to the current user dir'
cp -v ~/.bashrc ~/.bashrc.default.backup
cp -v ./.bashrc ~/

echo 'install packages needed from .zshrc --> like fzf for zsh-interactive-cd'
sudo zypper install fzf


echo 'NOTE: NB! Read the the *main* README for this automizations for known BUGS, issues, todo-s

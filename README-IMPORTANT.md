NB!
ADD/fix for all Distribustion :

sudo X install zsh
sudo X install git
--> before .oh-my-zsh --> the script doesn't install it and it is unknown if
the OS has it
--> before any "git clone" actions

NB!
REDO: 
Redo  the logic for the backup-ing (what if you run the scrip multiple times ==>
it will overwrite the backups with the userdefined --> needs if-else for
existancce)


NB ! NB! READ THE LOCAL FOR THE DISTRIBUTION 'README.md''s for specific things
- for example the .bashrc is not working for OpenSUSE and Ubuntu
- aliases.sh (ln -s /etc/profile.d/) is not working for Ubuntu, but it is for
  OpenSUSE


NOTE TO SELF: Stick to the ZSH Shell as it works well on all Distro's and its
unified unlike the local-distro bash (the bashrc and the /etc/bash(bash.bashrc)) --> Figure it out: TODO:

alias l='ls -Fax'
# The next two can (most of the time) complain that there's no '..?' file
#alias l.='ls -d .{.?,[^.]}* --color=tty'
# NB: .? means a dot and any character after that, one!
alias l.='ls -d .[^.]* ..?* --color=tty 2>/dev/null'
#alias l.='ls -d .[!.]* ..?* --color=tty 2>/dev/null'
#echo .[!.]* ..?* *

alias ll='ls -Alg'

# alias ls='ls -F -X -B -T 0 --color=tty'
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
alias lll='ls -Al "--time-style=+%Y-%m-%d %H:%M:%S %4Z"'

# Subversion
alias svnign='svn propedit svn:ignore "$@"'

# color grep
alias grep='grep --colour=auto'
# color less (restricted)
alias less='less -R'

# file location 
alias lt='ls -lahtF "--time-style=+%Y-%m-%d %H:%M:%S %4Z"'
alias la='ls -lahF "--time-style=+%Y-%m-%d %H:%M:%S %4Z"'

alias lg='ls -lahF | grep -iE'

# dnf specific
# alias dnfs="dnf search $@[0]| grep -iE" - think about how to insert
alias dnfs='dnf search'
alias dnfi='sudo dnf install'
alias dnfiy='sudo dnf install -y'
alias dnfuy='sudo dnf update -y'

# ssh login scpecific
alias ssh@vhs='ssh vas-home-srv@vhs'

# sudo alias-ing : Bash only checks the first word of a command for an alias, any words after that are not checke    d. That means in a command like sudo ll, only the first word (sudo) is checked by bash for an alias, ll is ignore    d. We can tell bash to check the next word after the alias (i.e sudo) by adding a space to the end of the alias v    alue
alias sudo='sudo '
# Problem with 'sudo(alias ) vim'
# The problem is fixed/patched in the example for .bashrc and has its versions in the .zshrc respectively
# Check the README.md


#Toolbox
alias tbe='toolbox enter '
alias tbr='toolbox run '

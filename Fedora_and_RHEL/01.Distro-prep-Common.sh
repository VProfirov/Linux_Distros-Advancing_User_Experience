#!/usr/bin/env bash

echo 'This is the INSTALLATION section:'
echo '--> Installing "hstr" :
	CLI(Command Line Interface) utility that brings improved shell command completion from the history. It aims to make completion easier and faster than Ctrl-R'
sudo dnf install -y hstr

echo '--> Installing ZSH (Z-Shell) and packages needed from .zshrc (Z-Shell run-commands) :
	{.zshrc is a just-in-time(runs before opening the shell for use) run commands as a config for the zsh}:'
echo '--> Installing "fzf" :
	fuzzy finder( an eager finder - matches as much as possible, while the more concrete is the match pattern the better is the match). fzf is a finder needed for zsh-interactive-cd plugin (part of the ".oh-my-zsh" framework)'
sudo dnf install -y fzf

echo '--> Installing "vim" and "neovim"
 (as vim will hardly break compared to its modern and advanced counterpart neovim which is constantly developed, extended and modernized)'
sudo dnf install vim -y neovim


echo '--> Installing: improved equivalents to popular cli programs\
<Built-in command/application-name> -->
 <better, more user-friendly and advanced application version> <(cli-keyword: command)> :
 <explanation>
{NOTE: (cli-keyword: command) is mentioned if it differs from the name of the package installed}

find --> fd-find (cli-keyword: fd): more user-friendly and intuitive version of the built-in find command\
df   --> duf
du   --> ncdu
cat  --> bat
'
_arr_AdvancedAppAlternatives_to_Builtin=(fd-find duf ncdu bat)

sudo dnf install -y "$_arr_AdvancedAppAlternatives_to_Builtin"
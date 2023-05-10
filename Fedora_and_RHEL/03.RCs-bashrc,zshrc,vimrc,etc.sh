#!/usr/bin/env bash

echo 'install vim and deploy config to the current user dir'
sudo dnf install vim
cp -v  ~/.vimrc ~/.vimrc.default.backup
cp -v ../CommonArtifacts/.vimrc ~/

echo 'deploy specific .zshrc to the current user dir'
cp -v ~/.zshrc ~/.zshrc.default.backup
cp -v ../CommonArtifacts/.zshrc ~/

echo 'deploy specific .bashrc to the current user dir'
cp -v ~/.bashrc ~/.bashrc.default.backup
cp -v ../CommonArtifacts/.bashrc ~/
#!/bin/sh
ln -fs ~/dotfiles/.bash_profile ~/.bash_profile
ln -fs ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -fs ~/dotfiles/.bash ~/.bash

# fish-shell
if [ -d ~/.config/fish ]; then
    ln -fs ~/dotfiles/.config/fish/config.fish ~/.config/fish/config.fish
    ln -fs ~/dotfiles/.config/fish/functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
fi

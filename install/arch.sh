#!/bin/bash

source "$(dirname "$0")/colors.sh"

# Install YAY
if yay --version &>/dev/null; then
  echo -e "${peach} YAY is already installed${text}"
else
  echo -e "${green}-> Installing YAY${text}"
  sudo pacman -S --needed git base-devel
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ..
  rm -rf yay
fi

# Install terminal stuff
echo -e "${green}-> Installing terminal stuff${text}"
sudo pacman -S --needed --noconfirm \
  zsh \
  curl \
  wget \
  tmux \
  starship \
  neovim \
  fzf \
  ripgrep \
  yazi \
  stow \
  thefuck \
  zoxide \
  fastfetch \
  eza

sudo chsh -s /usr/bin/zsh $USER

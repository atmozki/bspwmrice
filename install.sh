#!/bin/bash
# Install script to install my custom bswpwm rice on Arch Linux/Arcolinux.
echo "---------------------------------------------------------------------------------"
echo "                                                                                 "
echo "  ██████╗░░██████╗██████╗░░██╗░░░░░░░██╗███╗░░░███╗ ██████╗░██╗░█████╗░███████╗  "
echo "  ██╔══██╗██╔════╝██╔══██╗░██║░░██╗░░██║████╗░████║ ██╔══██╗██║██╔══██╗██╔════╝  "
echo "  ██████╦╝╚█████╗░██████╔╝░╚██╗████╗██╔╝██╔████╔██║ ██████╔╝██║██║░░╚═╝█████╗░░  "
echo "  ██╔══██╗░╚═══██╗██╔═══╝░░░████╔═████║░██║╚██╔╝██║ ██╔══██╗██║██║░░██╗██╔══╝░░  "
echo "  ██████╦╝██████╔╝██║░░░░░░░╚██╔╝░╚██╔╝░██║░╚═╝░██║ ██║░░██║██║╚█████╔╝███████╗  "
echo "  ╚═════╝░╚═════╝░╚═╝░░░░░░░░╚═╝░░░╚═╝░░╚═╝░░░░░╚═╝ ╚═╝░░╚═╝╚═╝░╚════╝░╚══════╝  "
echo "                                                                                 "
echo "---------------------------------------------------------------------------------"

current_dir=$(pwd)

# Update system
echo "---------------------------------Updating system---------------------------------"

sudo pacman -Syu

# Install yay (if not already installed)
echo "---------------------------------Installing yay---------------------------------"

if  ! command -v yay &> /dev/null
then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
    rm -rf yay
fi

# Install packages
echo "-------------------------------Installing packages-------------------------------"

# Install packages from pacman repo (if not already installed)
yay -S --noconfirm --needed base-devel xorg xorg-xrandr

# Install packages from AUR repo (if not already installed)
yay -S --noconfirm --needed bswpwm sxhkd polybar conky kitty neofetch neovim picom feh oh-my-zsh-git oh-my-zsh-powerlevel10k-git 

# Install fonts (if not already installed)
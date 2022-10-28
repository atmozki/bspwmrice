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
echo "--------------------------------Installing fonts--------------------------------"

yay -S --noconfirm --needed ttf-roboto ttf-roboto-mono ttf-font-awesome otf-font-awesome ttf-meslo-nerd-font-powerlevel10k otf-font-awesome ttc-iosevka

# Oh My Zsh Configuration

# Install zsh-autosuggestions
echo "----------------------------Installing zsh-autosuggestions-----------------------"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting

echo "---------------------------Installing zsh-syntax-highlighting---------------------"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Bspwm Configuration
# Copy config files 
echo "--------------------------------Copying config files----------------------------"

# Copy bspwm config files
read -p "Do you want to copy all bspwm config files? [y/n] " -n 1 -r
echo   # (optional) move to a new line
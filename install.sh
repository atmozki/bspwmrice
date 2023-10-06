#!/bin/bash
# Install script to install my custom bswpwm rice on Arch Linux/Arcolinux. (BlackTheme)
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

# Check & Update system
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

# Install required packages (important)
echo "-------------------------------Installing packages-------------------------------"

# Install packages from pacman repo (if not already installed)
yay -S --noconfirm --needed base-devel xorg xorg-xrandr polkit polkit-gnome

# Install packages from AUR repo (if not already installed)
yay -S --noconfirm --needed bspwm sxhkd polybar conky kitty neofetch neovim picom feh oh-my-zsh-git zsh-theme-powerlevel10k-git 

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

# Removing existing config files
read -p "Do you want to remove existing config files from Polybar, Conky and Picom(Recommended)? [y/n]" -n 1 -r
echo # New Line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Removing Polybar, Conky and Picom config files"
    rm -rf ~/.config/polybar
    rm -rf ~/.config/conky
    rm -rf ~/.config/picom
    echo "DONE!"
fi

# Copy config files 
echo "--------------------------------Copying config files----------------------------"

# Copy bspwm config files
read -p "Do you want to copy all bspwm config files? [y/n] " -n 1 -r  # -n 1 -r means only one character is required to be entered
echo   # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Copying bspwm config files..."
    cp -r .config/bspwm ~/.config/
    echo "Copying sxhkd config files..."
    cp -r .config/sxhkd ~/.config/
    echo "Copying polybar config files..."
    cp -r .config/polybar ~/.config/
    echo "Copying kitty config files..."
    cp -r .config/kitty ~/.config/
    echo "Copying neovim config files..."
    cp -r .config/nvim ~/.config/
    echo "Copying picom config files..."
    cp -r .config/picom ~/.config/
    echo "Copying conky config files..."
    cp -r .config/conky ~/.config/
    echo "Copying neofetch config files..."
    cp -r .config/neofetch ~/.config/
    echo "Copying .zshrc..."
    cp -r .zshrc ~/
    echo "Copying .p10k.zsh..."
    cp -r .p10k.zsh ~/
    echo "Done!"
fi
if [[ $REPLY =~ ^[Nn]$ ]]
then
    echo "What do you want to copy?"
    echo "1. bspwm"
    echo "2. sxhkd"
    echo "3. polybar"
    echo "4. kitty"
    echo "5. neovim"
    echo "6. picom"
    echo "7. conky"
    echo "8. neofetch"
    echo "9. .zshrc & .p10k.zsh"
    echo "0. Exit"
    read -p "Enter your choice: " -n 1 -r
    echo   # (optional) move to a new line
    if [[ $REPLY =~ ^[1]$ ]]
    then
        echo "Copying bspwm config files..."
        cp -r .config/bspwm ~/.config/
        echo "Done!"
    fi
    if [[ $REPLY =~ ^[2]$ ]]
    then
        echo "Copying sxhkd config files..."
        cp -r .config/sxhkd ~/.config/
        echo "Done!"
    fi
    if [[ $REPLY =~ ^[3]$ ]]
    then
        echo "Copying polybar config files..."
        cp -r .config/polybar ~/.config/
        echo "Done!"
    fi
    if [[ $REPLY =~ ^[4]$ ]]
    then
        echo "Copying kitty config files..."
        cp -r .config/kitty ~/.config/
        echo "Done!"
    fi
    if [[ $REPLY =~ ^[5]$ ]]
    then
        echo "Copying neovim config files..."
        cp -r .config/nvim ~/.config/
        echo "Done!"
    fi
    if [[ $REPLY =~ ^[6]$ ]]
    then
        echo "Copying picom config files..."
        cp -r .config/picom ~/.config/
        echo "Done!"
    fi
    if [[ $REPLY =~ ^[7]$ ]]
    then
        echo "Copying conky config files..."
        cp -r .config/conky ~/.config/
        echo "Done!"
    fi
    if [[ $REPLY =~ ^[8]$ ]]
    then
        echo "Copying neofetch config files..."
        cp -r .config/neofetch ~/.config/
        echo "Done!"
    fi
    if [[ $REPLY =~ ^[9]$ ]]
    then
        echo "Copying .zshrc..."
        cp -r .zshrc ~/
        echo "Copying .p10k.zsh..."
        cp -r .p10k.zsh ~/
        echo "Done!"
    fi
    if [[ $REPLY =~ ^[0]$ ]]
    then
        echo "Exiting..."
        exit
    fi
fi

# Copy wallpapers
echo "--------------------------------Copying wallpapers-------------------------------"

read -p "Do you want to copy all wallpapers? [y/n] " -n 1 -r
echo   # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Cloning wallpapers..."
    git clone https://github.com/atmozki/Walls.git
    chmod +x Walls/install.sh
    ./Walls/install.sh
fi
if [[ $REPLY =~ ^[Nn]$ ]]
then
    echo "Skipping..."
fi

# Done
echo "-----------------------------------Done!-----------------------------------------"

echo "Done! You can now reboot your system and enjoy your new setup!"

# Reboot
read -p "Do you want to reboot now? [y/n] " -n 1 -r
echo   # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Rebooting..."
    reboot
fi
if [[ $REPLY =~ ^[Nn]$ ]]
then
    echo "Exiting..."
    exit
fi

# End of script

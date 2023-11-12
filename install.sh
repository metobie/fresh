#!/bin/bash


#  --  Details  --  #
# This script will install needed tools and applications. 
# Install iterm2 and run the script. 
# https://iterm2.com


#  --  Rosetta and XCODE Tools  --  #
# sudo softwareupdate --install-rosetta --agree-to-license
# xcode-select --install
# echo "Press <Install> on the prompt. It's probably hidden if you are running terminal in fullcreen..."


#  --  Homebrew for Apple Silicon  --  #
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
# eval "$(/opt/homebrew/bin/brew shellenv)"
# brew analytics off
# brew update


#  --  Install Applications & Tools --  #
# formula: Homebrew package definition that builds from upstream sources
# cask: Homebrew package definition that installs macOS native applications

# 1Password                                   Password manager that keeps all passwords secure behind one password
brew install --cask 1password #               https://formulae.brew.sh/cask/1password

# 1Password CLI                               Command-line interface for 1Password
brew install --cask 1password-cli #           https://formulae.brew.sh/cask/1password-cli

# Amazon Workspaces                           Cloud native persistent desktop virtualization
brew install --cask amazon-workspaces #       https://formulae.brew.sh/cask/amazon-workspaces

# Arc                                         Good lookin' Chromium based browser
brew install --cask arc #                     https://formulae.brew.sh/cask/arc

# Burpsuite Professional                      Web security testing toolkit
# brew install --cask burp-suite-professional # https://formulae.brew.sh/cask/burp-suite
brew install --cask burp-suite #              https://formulae.brew.sh/cask/burp-suite

# Citrix Workspace                            Managed desktop virtualization solution
brew install --cask citrix-workspace #        https://formulae.brew.sh/cask/citrix-workspace#default

# Docker                                      Pack, ship and run any application as a lightweight container
brew install --cask docker #                  https://formulae.brew.sh/cask/docker

# Docker Compose                              Isolated development environments using Docker
brew install docker-compose #                 https://formulae.brew.sh/formula/docker-compose
mkdir -p ~/.docker/cli-plugins
ln -sfn $HOMEBREW_PREFIX/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose

# Firefox                                     Web browser
brew install --cask firefox #                 https://formulae.brew.sh/cask/firefox

# Firefox (multifirefox)                      Launcher utility to run multiple versions of Firefox side-by-side
brew install --cask multifirefox #            https://formulae.brew.sh/cask/multifirefox

# Flameshot                                   Screenshot software
brew install --cask flameshot #               https://formulae.brew.sh/cask/flameshot

# Git                                         Distributed revision control system
brew install git #                            https://formulae.brew.sh/formula/git

# Github                                      Desktop client for GitHub repositories
brew install --cask github #                  https://formulae.brew.sh/cask/github

# Github Pulse                                Statusbar app to help you remember to contribute every day on Github           
brew install --cask githubpulse #             https://formulae.brew.sh/cask/githubpulse

# Google Chrome                               Web browser
brew install --cask google-chrome #           https://formulae.brew.sh/cask/google-chrome

# gptline                                     ChatGPT client with native iTerm2 support
brew install gptline #                        https://formulae.brew.sh/formula/gptline

# iterm2                                      Terminal emulator as alternative to Apple's Terminal app                             
brew install --cask iterm2 #                  https://formulae.brew.sh/cask/iterm2

# Mabel                                       Fancy BitTorrent client for the terminal
brew install mabel #                          https://formulae.brew.sh/formula/mabel

# Maccy                                       Clipboard manager
brew install --cask maccy #                   https://formulae.brew.sh/cask/maccy

# Microsoft Edge                              Web browswer
brew install --cask microsoft-edge #          https://formulae.brew.sh/cask/microsoft-edge

# Microsoft Office 365                        Microsoft Office suite
brew install --cask microsoft-office #        https://formulae.brew.sh/cask/microsoft-office

# Microsoft Teams                             Meet, chat, call, and collaborate in just one place
brew install --cask microsoft-teams #         https://formulae.brew.sh/cask/microsoft-teams

# Microsoft Remote Desktop                    Remote desktop client
brew install microsoft-remote-desktop #      https://formulae.brew.sh/cask/microsoft-remote-desktop

# Neofetch                                    Fast, highly customisable system info script
brew install neofetch #                       https://formulae.brew.sh/formula/neofetch

# Notion                                      App to write, plan, collaborate, and get organized
brew install --cask notion #                  https://formulae.brew.sh/cask/notion

# Notion Enhanced                             Enhancer/customiser for the all-in-one productivity workspace notion.so
brew install --cask notion-enhanced #         https://formulae.brew.sh/cask/notion-enhanced

# NMAP                                        Port scanning utility for large networks
brew install nmap #                           https://formulae.brew.sh/formula/nmap

# Parallels Desktop                           Desktop virtualization software
brew install --cask parallels #               https://formulae.brew.sh/cask/parallels

# Quicklook CSV                               QuickLook plugin for CSV files
brew install --cask quicklook-csv #           https://formulae.brew.sh/cask/quicklook-csv

# RoyalTS                                     Remote management solution
brew install --cask royal-tsx #               https://formulae.brew.sh/cask/royal-tsx

# Spacedrive                                  Open source cross-platform file explorer
brew install --cask spacedrive #              https://formulae.brew.sh/cask/spacedrive

# SMAP                                        Drop-in replacement for Nmap powered by shodan.io
brew install smap #                           https://formulae.brew.sh/formula/smap

# Spotify                                     Music streaming service
brew install --cask spotify #                 https://formulae.brew.sh/cask/spotify

# Suspicious Package                          Application for inspecting installer packages
brew install --cask suspicious-package #      https://formulae.brew.sh/cask/suspicious-package

# The Unarchiver                              Unpacks archive files
brew install --cask the-unarchiver #          https://formulae.brew.sh/cask/the-unarchiver

# Tree                                        Display directories as trees (with optional color/HTML output)
brew install tree #                           https://formulae.brew.sh/formula/tree

# VS Code                                     Open-source code editor
brew install --cask visual-studio-code #      https://formulae.brew.sh/cask/visual-studio-code

# wget                                        Internet file retriever
brew install wget #                           https://formulae.brew.sh/formula/wget

# VLC                                         Multimedia player
brew install --cask vlc #                     https://formulae.brew.sh/cask/vlc

# qBittorrent                                 Peer to peer Bitorrent client
brew install --cask qbittorrent #             https://formulae.brew.sh/cask/qbittorrent

# zsh                                         UNIX shell (command interpreter)
brew install zsh #                            https://formulae.brew.sh/formula/zsh

# Yabai                                       Tiling window manager for macOS
brew install koekeishiya/formulae/yabai #     https://github.com/koekeishiya/yabai

# SKHD                                        Simple hotkey daemon for macOS
brew install koekeishiya/formulae/skhd #      https://github.com/koekeishiya/skhd

# Bashtop
brew install python3
python3 -m pip install psutil
brew install bash coreutils gnu-sed git
brew install osx-cpu-temp
git clone https://github.com/aristocratos/bashtop.git ~/.config/bashtop
cd ~/.config/bashtop
sudo make install

# -- Backup -- # NOT WORKING
cd ~/ 
# Backup dot-files just in case
mkdir -p ~/.bak/config
cp .p10k.zsh .bak/config/.p10k.zsh.bak
cp .skhdrc .bak/config/.skhdrc.bak
cp .yabairc .bak/config/.yabairc.bak
cp .zprofile .bak/config/.zprofile.bak

#  --  Oh-my-zsh  --  #
# Open home folder
cd ~/ 

# Run Oh My Zsh                              https://github.com/ohmyzsh/ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Download PowerLevel10K Theme               https://github.com/romkatv/powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Set the theme in ~/.zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k/powerlevel10k"/g' ~/.zshrc
p10k configure

# Install fonts NOT WORKING
cd ~/ 
# clone
git clone https://github.com/powerline/fonts.git --depth=1 ~/Documents/GitHub
# install
cd ~/Documents/GitHub/fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts



cd ~/ 
#mkdir ~/.downloads
git clone https://github.com/metobie/fresh.git ~/Documents/GitHub
cd ~/Documents/GitHub/fresh/dotfiles
# cp .p10k.zsh .
cp .skhdrc ~/
cp .yabairc ~/
# cp .zprofile ~/
# cp .zshrc ~/

# clean-up a bit
cd ..
rm -rf fresh

yabai --start-service #Allow the prompts
yabai --restart-service #Allow the prompts
skhd --start-service # Allow the prompts
skhd --restart-service # Allow the prompts
source ~/.zshrc
# add write changes to zshrc files
#echo 'Hello' >> /Users/username/Desktop/user.txt

#  --  Sketchybar  --  # REPLACED BY SWIFTBAR
# Install
#brew tap FelixKratz/formulae
#brew install sketchybar
#brew tap homebrew/cask-fonts
#brew install --cask font-hack-nerd-font
#echo "Installing as a background service"
#echo "Or, if you don't want/need a background service you can just run:"
#echo  "LANG="en_US.UTF-8" /opt/homebrew/opt/sketchybar/bin/sketchybar"
#echo "Run to disable background service: brew services start felixkratz/formulae/sketchybar"
#mkdir -p ~/.config/sketchybar
#cp /opt/homebrew/opt/sketchybar/share/sketchybar/examples/sketchybarrc ~/.config/sketchybar/sketchybarrc
#mkdir ~/.config/sketchybar/plugins
#cp -r /opt/homebrew/opt/sketchybar/share/sketchybar/examples/plugins/ ~/.config/sketchybar/plugins/
#chmod +x ~/.config/sketchybar/plugins/*
#brew services start felixkratz/formulae/sketchybar

#  ---  BitBar  --  €
#BitBar                                       Utility to display the output from any script or program in the menu bar
# brew install --cask bitbar #                  https://formulae.brew.sh/cask/bitbar
# mkdir ~/.config/BitBar
# git clone yabai.1d.sh ~/.config/BitBar # Fix this. 1d=run once a day
# sudo chmod +x ~/.config/BitBar/yabai.1d.sh
# BitBar # How to open application from terminal? Accept prompt


# Backup dot-files just in case
#mkdir .config.bak
#mv .zprofile .bak/.zprofile.bak
#mv .zshrc .bak/.zshrc.bak

# Copy all dotfiles frim github after all extensions such as 
# yabai, skhd, bitbar etc has been insalled and started
#.config/
#

# Webroot
#code


# -- Application configurations -- #

# iTerm2
# Flameshot
# Yabai
# SKHD
# ohmyz
# iterm profile
# yasabi profile
# skhd profile
# !docker

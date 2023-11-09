#!/bin/bash


#  --  Details  --  #
# This script will install needed tools and applications. 
# Install iterm2 and run the script. 
# https://iterm2.com


#  --  Rosetta and XCODE Tools  --  #
sudo softwareupdate --install-rosetta
xcode-select --install


#  --  Homebrew for Apple Silicon  --  #
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew analytics off
brew update


#  --  Install Applications & Tools --  #
# formula: Homebrew package definition that builds from upstream sources
# cask: Homebrew package definition that installs macOS native applications

# 1Password                                   Password manager that keeps all passwords secure behind one password
brew install --cask 1password #               https://formulae.brew.sh/cask/1password

# 1Password CLI                               Command-line interface for 1Password
brew install --cask 1password-cli #           https://formulae.brew.sh/cask/1password-cli

# Amazon Workspaces                           Cloud native persistent desktop virtualization
brew install --cask amazon-workspaces #       https://formulae.brew.sh/cask/amazon-workspaces

# Burpsuite Professional                      Web security testing toolkit
brew install --cask burp-suite-professional # https://formulae.brew.sh/cask/burp-suite

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
# brew install --cask iterm2 #                https://formulae.brew.sh/cask/iterm2

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
brew install mmicrosoft-remote-desktop #      https://formulae.brew.sh/cask/microsoft-remote-desktop

# Notion                                      App to write, plan, collaborate, and get organized
brew install --cask notion #                  https://formulae.brew.sh/cask/notion

# Notion Enhanced                             Enhancer/customiser for the all-in-one productivity workspace notion.so
brew install --cask notion-enhanced #         https://formulae.brew.sh/cask/notion-enhanced

# NMAP                                        Port scanning utility for large networks
brew install --cask nmap #                    https://formulae.brew.sh/formula/nmap

# Parallels Desktop                           Desktop virtualization software
brew install --cask parallels #               https://formulae.brew.sh/cask/parallels

# Quicklook CSV                               QuickLook plugin for CSV files
brew install --cask quicklook-csv #           https://formulae.brew.sh/cask/quicklook-csv

# RoyalTS                                     Remote management solution
brew install --cask royal-tsx #               https://formulae.brew.sh/cask/royal-tsx

# SMAP                                        Drop-in replacement for Nmap powered by shodan.io
brew install smap #                           https://formulae.brew.sh/formula/smap

# Spotify                                     Music streaming service
brew install --cask spotify #                 https://formulae.brew.sh/cask/spotify

# Suspicious Package                          Application for inspecting installer packages
brew install --cask suspicious-package #      https://formulae.brew.sh/cask/suspicious-package

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
# Neofetch


#  --  Application tweaks and pimpin'  --  #
# Open home folder
cd ~/ 

# Download Oh My Zsh                          https://github.com/ohmyzsh/ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Download PowerLevel10K Theme                https://github.com/romkatv/powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Backup dot-files just in case
mkdir .bak
mv .zprofile .bak/.zprofile.bak
mv .zshrc .bak/.zshrc.bak

# Copy new .dot-files
.config/
source ~/.zshrc

# Webroot
code


# -- Application configurations -- #

# iTerm2
!Copy profiles
!Install 

# Flameshot
code

# Yabai
!Copy config file

# SKHD
!Copy config file





TO DO
z configs
zsh
ohmyz
iterm profile
yasabi profile
skhd profile
!docker

#!/bin/bash

# Create Tools directory
mkdir -p ~/Tools/Linux
mkdir -p ~/Tools/Windows
mkdir -p ~/Tools/Common

sudo apt update

sudo apt install -y \
  seclists \
  enum4linux-ng \
  gobuster \
  peass \
  remmina \
  bloodhound \
  keepassxc

sudo apt clean

# --- Commona --- #
# Rustscan
wget https://github.com/RustScan/RustScan/releases/download/2.4.1/rustscan.deb.zip
unzip rustscan.deb.zip
rm rustscan.deb.zip
sudo dpkg -i rustscan_2.4.1-1_amd64.deb
sudo apt install -f
rm rustscan_2.4.1-1_amd64.deb

# --- Linux Tools --- #
# pspy
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.1/pspy32 -O ~/Tools/Linux/pspy32 -q
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.1/pspy64 -O ~/Tools/Linux/pspy64 -q

# chisel
wget https://github.com/jpillora/chisel/releases/download/v1.10.1/chisel_1.10.1_linux_amd64.gz -O ~/Tools/Linux/chisel.gz -q
gunzip ~/Tools/Linux/chisel.gz
chmod +x ~/Tools/Linux/chisel

# --- Windows Tools --- #
# PSTools
wget https://download.sysinternals.com/files/PSTools.zip -O ~/Tools/Windows/PSTools.zip -q
unzip ~/Tools/Windows/PSTools.zip -d ~/Tools/Windows/PSTools
rm ~/Tools/Windows/PSTools.zip

# chisel
wget https://github.com/jpillora/chisel/releases/download/v1.10.1/chisel_1.10.1_windows_amd64.gz -O ~/Tools/Windows/chisel.gz -q
gunzip ~/Tools/Windows/chisel.gz
mv ~/Tools/Windows/chisel ~/Tools/Windows/chisel.exe

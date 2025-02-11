#!/bin/bash

# Create Tools directory
mkdir -p ~/Tools/Linux
mkdir -p ~/Tools/Windows
mkdir -p ~/Tools/Common

sudo apt update

sudo apt install -y \
  seclists \
  enum4linux-ng \
  gobuster

sudo apt clean

# --- Linux --- #
# Install pspy binaries
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.1/pspy32 -O ~/Tools/Linux/pspy32
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.1/pspy64 -O ~/Tools/Linux/pspy64

# --- Windows --- #
# PSTools
wget https://download.sysinternals.com/files/PSTools.zip -O ~/Tools/Windows/PSTools.zip -q
unzip ~/Tools/Windows/PSTools.zip -d ~/Tools/Windows/PSTools
rm ~/Tools/Windows/PSTools.zip

wget https://github.com/jpillora/chisel/releases/download/v1.10.1/chisel_1.10.1_windows_amd64.gz -O ~/Tools/Windows/chisel.gz -q
gunzip ~/Tools/Windows/chisel.gz
mv ~/Tools/Windows/chisel ~/Tools/Windows/chisel.exe

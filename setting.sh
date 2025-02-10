#!/bin/bash

# Create Tools directory
mkdir -p ~/Tools/Linux
mkdir -p ~/Tools/Windows
mkdir -p ~/Tools/Common

sudo apt-get update

sudo apt-get install -y \
  seclists \
  enum4linux-ng \

sudo apt-get clean
# --- Linux --- #
# Install pspy binaries
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.1/pspy32 -O ~/Tools/Linux/pspy32
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.1/pspy64 -O ~/Tools/Linux/pspy64

# --- Windows --- #
# PSTools
wget https://download.sysinternals.com/files/PSTools.zip -O ~/Tools/Windows/PSTools.zip
unzip ~/Tools/Windows/PSTools.zip -d ~/Tools/Windows/PSTools
rm ~/Tools/Windows/PSTools.zip

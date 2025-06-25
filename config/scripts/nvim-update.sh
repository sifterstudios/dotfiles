#!/bin/bash
set -e # Exit on error

cd ~/neovim/
git pull
make CMAKE_BUILD_TYPE=RelWithDebInfo
make install CMAKE_INSTALL_PREFIX=$HOME/.local/neovim/
echo "Neovim Nightly update successfully!"

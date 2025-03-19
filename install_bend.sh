#!/bin/bash

# Installazione di Rust senza richiesta manuale
echo "Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Caricare Rust senza dover riavviare il terminale
echo "Loading Rust environment..."
source "$HOME/.cargo/env"

# Installazione di hvm e bend-lang
echo "Installing hvm and bend-lang..."
cargo install hvm
cargo install bend-lang

echo "Installing NVIDIA runtime..."
!wget -q https://developer.download.nvidia.com/compute/cuda/12.8.1/local_installers/cuda_12.8.1_570.124.06_linux.run -O cuda_installer.run && sudo sh cuda_installer.run --silent --toolkit && rm cuda_installer.run


echo "Installation complete!"

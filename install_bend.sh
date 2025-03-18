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

echo "Installation complete!"

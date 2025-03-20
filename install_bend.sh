#!/bin/bash

echo "Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

echo "Loading Rust environment..."
source "$HOME/.cargo/env"

echo "Installing hvm and bend-lang..."
cargo install hvm
cargo install bend-lang

echo "Installation complete!"

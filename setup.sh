#!/bin/bash

# Define the source and target directories
DOTFILES_DIR="$HOME/.dotfiles"  # The location of your dotfiles repository
CONFIG_DIR="$HOME/.config"       # Standard user configuration directory

# Function to create symlink if target does not exist
link_file () {
  local src=$1
  local dst=$2
  if [ -L "$dst" ]; then
    # Target is already a symlink (nothing to do)
    echo "Symlink already exists: $dst"
  elif [ -e "$dst" ]; then
    # Target exists and is not a symlink (we will not replace it)
    echo "Target already exists (not a symlink): $dst"
  else
    # Target doesn't exist, safe to create a symlink
    ln -s "$src" "$dst"
    echo "Created symlink: $dst -> $src"
  fi
}

# Ensure the .config directory exists
mkdir -p "$CONFIG_DIR"

# Symlink directories and files
link_file "$DOTFILES_DIR/nvim" "$CONFIG_DIR/nvim"
link_file "$DOTFILES_DIR/kitty" "$CONFIG_DIR/kitty"
link_file "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
link_file "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"

echo "Symlinking complete."



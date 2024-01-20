if ! command -v starship > /dev/null 2>&1; then
    echo '🦀 Install Starship...'
    curl -sS https://starship.rs/install.sh | sh
fi

CONFIG_FILE="${HOME}/.config/starship.toml"
if [ ! -f "$CONFIG_FILE" ]; then
  echo 'Create a symbolink link to Starship custom config'
  ln -s "$(realpath "./starship.toml")" "$CONFIG_FILE"
fi

# set up shell to use Starship
eval "$(starship init zsh)"
if ! command -v starship > /dev/null 2>&1; then
    echo
    echo '🦀 Installing Starship prompt...'
    curl -sS https://starship.rs/install.sh | sh
fi

CONFIG_FILE="${HOME}/.config/starship.toml"
if [ ! -f "$CONFIG_FILE" ]; then
  echo
  echo '🔗 Creating a symbolink link to Starship custom config...'
  ln -s "$(realpath "./starship.toml")" "$CONFIG_FILE"
  echo '...created.'
fi
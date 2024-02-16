DIR="${HOME}/.zsh/zsh-autosuggestions"

if [ ! -d "$DIR" ]; then
    echo
    echo '🤖 Downloading ZSH autosuggestions plugin...'
    git clone https://github.com/zsh-users/zsh-autosuggestions "${DIR}"
fi
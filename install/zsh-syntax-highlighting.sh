DIR="${HOME}/.zsh/zsh-syntax-highlighting"

if [ ! -d "$DIR" ]; then
    echo
    echo '🦄 Downloading ZSH syntax highlighting plugin...'
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${DIR}"
fi
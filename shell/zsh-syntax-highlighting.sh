DIR="${HOME}/.zsh/zsh-syntax-highlighting"

if [ ! -d "$DIR" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${DIR}"
fi

source "${DIR}/zsh-syntax-highlighting.zsh"
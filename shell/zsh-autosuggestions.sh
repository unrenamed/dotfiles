DIR="${HOME}/.zsh/zsh-autosuggestions"

if [ ! -d "$DIR" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "${DIR}"
fi

source "${DIR}/zsh-autosuggestions.zsh"
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gc='git checkout'
alias gp='git push'
alias gpl='git pull'
alias dotcommit="git add . && git commit -m '.'"
alias gdangle='git fsck --lost-found | grep "^dangling commit" | sed "s/^dangling commit //g" | xargs git show -s --oneline'
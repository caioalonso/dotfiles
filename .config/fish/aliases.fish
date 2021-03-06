alias gs="git status"
alias ga="git add"
alias gap="git add -p"
alias gc="git commit"
alias gco="git checkout"
alias gf="git fetch"
alias gm="git merge"

alias dce="docker-compose exec backend bundle exec"
alias windows="sudo grub-reboot 2 && sudo reboot"
alias ssh-sandbox="ssh (qeb tellus-sandbox-jobs | head -n 1)"
alias ssh-staging="ssh (qeb tellus-staging-jobs | head -n 1)"
alias ssh-dev="ssh (qeb tellus-dev-jobs | head -n 1)"
alias ssh-prod="ssh (qeb tellus-prod-jobs-2 | head -n 1)"
alias ssh-whiskers="ssh (qeb Zilly-Whiskers-Prod | head -n 1)"
alias vim="nvim"
alias be="bundle exec spring"
alias brspec="bundle exec spring rspec"
alias config="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

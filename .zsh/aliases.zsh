# Alias
# ---
#
# mac OS shortcuts
alias code="open -a 'Visual Studio Code'"

# dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# my aliases
alias reload="source ~/.zshrc"
alias k='kubectl'
alias c='docker-compose'
alias up='git-up'
alias clean='git removed-branches --prune --force'
alias cleanup='up && clean'
alias brewski='mas outdated; mas upgrade; brew update; brew upgrade; brew cleanup; brew doctor; brew cu; omz update; reload'
alias ddd='docker stop $(docker ps -aq) && z traefik && docker-compose up -d && cd $OLDPWD && docker-compose up -d'
alias pip=pip3
alias python=python3

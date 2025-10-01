# Shell Aliases
# ============

# macOS shortcuts
alias code="open -a 'Visual Studio Code'"

# Shell management
alias reload="source ~/.zshrc"
alias zshconfig="code ~/.zshrc"

# Dotfiles (yadm)
alias dotfiles='yadm'

# Git shortcuts
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'
alias gco='git checkout'
alias gb='git branch'
alias glog='git log --oneline --graph --decorate'
alias up='git-up'
alias clean='git removed-branches --prune --force'
alias cleanup='up && clean'

# Kubernetes shortcuts
alias k='kubectl'
alias kgp='kubectl get pods'
alias kgs='kubectl get services'
alias kgd='kubectl get deployments'
alias kl='kubectl logs'
alias kd='kubectl describe'

# Docker shortcuts
alias d='docker'
alias dc='docker-compose'
alias dps='docker ps'
alias dpa='docker ps -a'
alias di='docker images'
alias dstop='docker stop $(docker ps -aq)'
alias drm='docker rm $(docker ps -aq)'
alias ddd='docker stop $(docker ps -aq) && z traefik && docker-compose up -d && cd $OLDPWD && docker-compose up -d'

# System update alias
alias brewski='mas outdated; mas upgrade; brew update; brew upgrade; brew cleanup; brew doctor; brew cu; omz update; reload'

# Python shortcuts
alias pip=pip3
alias python=python3

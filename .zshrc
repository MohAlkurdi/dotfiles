# BREW
eval "$(/opt/homebrew/bin/brew shellenv)"

# RBENV
eval "$(rbenv init - zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#Go
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Ignore case senstive words
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

#Aliases
# -----------------
# personal handy aliases
alias lg=lazygit
# -----------------
# Laravel stuff
alias pint=./vendor/bin/pint
alias pest=./vendor/bin/pest
alias art="php artisan"
alias pam='php artisan migrate'
alias pamf='php artisan migrate:fresh'
alias pamfs='php artisan migrate:refresh --seed'
alias pamc='php artisan make:controller'
alias pamm='php artisan make:model'
alias pamM='php artisan make:migration'
# -----------------

# Pomodoro timer - src: https://patloeber.com/pomodoro-app-cli-macos 
work() {
  # usage: work 10m, work 60s etc. Default is 20m
  timer "${1:-25m}" && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -sound Crystal
}

rest() {
  # usage: rest 10m, rest 60s etc. Default is 5m
  timer "${1:-5m}" && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -sound Crystal
}

# Starship
eval "$(starship init zsh)"

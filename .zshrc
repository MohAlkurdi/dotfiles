# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Composer
PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:/usr/local/bin"

#Go
export PATH=$PATH:/usr/local/go/bin

#Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# Java
export JAVA_HOME="/home/mo/.jdks/temurin-17.0.10"
export PATH="$PATH:$JAVA_HOME/bin"

# Ignore case senstive words
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

#Aliases
# -----------------
# personal handy aliases
alias lg=lazygit
alias gt=gnome-terminal
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
#pnpm
alias pn=pnpm


# Starship
eval "$(starship init zsh)"

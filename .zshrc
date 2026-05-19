# fzf configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# modern-cli-setup (starship) ---
eval "$(starship init zsh)"

# modern-cli-setup (fzf/zoxide/eza/bat) ---

export FZF_DEFAULT_OPTS="--preview 'bat --style=plain --color=always --line-range=:500 {}' --preview-window=right:60%"

eval "$(zoxide init zsh)"

alias ls='eza --icons'
alias ll='eza -lah --icons'
alias tree='eza --tree'

source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

alias vfz='vim "$(fzf)"'
alias ffiles='git rev-parse --is-inside-work-tree >/dev/null 2>&1 && git ls-files | fzf || fzf'

# env vars
export PATH="$PATH:$HOME/.local/bin"
export GOPATH="$HOME/go"

# Set editor
export EDITOR="code --wait"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Load local configurations
source "$HOME/.zshrc.local"

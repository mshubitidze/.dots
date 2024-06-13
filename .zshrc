export ZSH="$HOME/.oh-my-zsh"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	zsh-vi-mode
)

eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
source $ZSH/oh-my-zsh.sh

export EDITOR="nvim"

alias cat="bat --theme=TwoDark"

alias v="nvim"
alias c="clear"
alias s="source ~/.zshrc"

alias ave="ansible-vault encrypt"
alias avd="ansible-vault decrypt"

alias dc="docker compose"

alias pn="pnpm"
alias pnx="pnpm dlx"

alias ta="tmux attach"
alias tls="tmux ls"

alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gco="git checkout"
alias gcl="git clone"
alias gd="git diff"
alias gdc="git diff --cached"
alias gb="git branch"
alias gba="git branch -a"
alias gm="git merge"
alias gma="git merge --abort"
alias gcoa="git checkout -"
alias glog="git log --oneline --decorate --graph"

alias ld="eza -lD"
alias lf="eza -lf --color=always | grep -v /"
alias lh="eza -dl .* --group-directories-first"
alias ll="eza -al --group-directories-first"
alias ls="eza -alf --color=always --sort=size | grep -v /"
alias lt="eza -al --sort=modified"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

[ -s "/Users/m/.bun/_bun" ] && source "/Users/m/.bun/_bun"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

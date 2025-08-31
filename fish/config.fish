set fish_greeting

set -gx EDITOR nvim

set -gx MANPAGER 'nvim +Man!'

set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH /opt/homebrew/opt/postgresql@15/bin $PATH

alias v="nvim"
alias c="clear"

alias dc="docker compose"

alias n="npm"
alias nx="npx"
alias pn="pnpm"
alias pnx="pnpm dlx"

alias ta="tmux attach"
alias tls="tmux ls"

alias ls="eza"
alias cat="bat"

alias gst="git status"
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
alias glog="git log --oneline --decorate --graph"
alias gsw="git switch"
alias gfp="git fetch --prune --all"

bind yy fish_clipboard_copy
bind Y fish_clipboard_copy
bind p fish_clipboard_paste

zoxide init fish | source
starship init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

string match -q "$TERM_PROGRAM" kiro and . (kiro --locate-shell-integration-path fish)

# Added by Windsurf
fish_add_path /Users/m/.codeium/windsurf/bin
fish_add_path $HOME/.local/bin

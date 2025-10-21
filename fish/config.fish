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
alias gpl="git pull"
alias gplr="git pull --rebase"
alias grb="git rebase"
alias grbi="git rebase -i"
alias grs="git reset"
alias grsh="git reset --hard"
alias gss="git stash"
alias gssp="git stash pop"
alias gssl="git stash list"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gundo="git reset --soft HEAD~1"

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

# pnpm
set -gx PNPM_HOME /Users/m/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
fish_add_path $HOME/.local/bin

if [[ $INTELLIJ_ENVIRONMENT_READER ]]; then return; fi
###############################################################################
# ENHANCED ZSH CONFIGURATION (MERGED VERSION)
###############################################################################

### --- Terminal & Colors ------------------------------------------------------
export TERM="xterm-256color"
export COLORTERM=truecolor
export LESS="-R"

### --- Homebrew (Apple Silicon) ----------------------------------------------
if [ -d /opt/homebrew ]; then
    export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
    export FPATH="/opt/homebrew/share/zsh/site-functions:$FPATH"
fi

### --- Basic Shell Behaviour -------------------------------------------------
setopt AUTO_CD
setopt EXTENDED_GLOB
setopt INTERACTIVE_COMMENTS
setopt NO_BEEP
setopt NO_CLOBBER

### --- Enhanced History ------------------------------------------------------
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
HISTSIZE=5000
SAVEHIST=5000
HISTFILE="$HOME/.zsh_history"

### --- Oh-My-Zsh -------------------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="" # Disabled because we are using Starship
if [ -d "$ZSH" ]; then
    source "$ZSH/oh-my-zsh.sh"
fi

### --- STARSHIP PROMPT (Replaces Spaceship) ----------------------------------
# This gives you the custom look defined in your starship.toml
eval "$(starship init zsh)"

### --- Completion ------------------------------------------------------------
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

### --- Aliases ---------------------------------------------------------------
# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias cat='bat'

# EZA ALIASES (The "DistroTube" colorful list style)
alias ls='eza -al --color=always --group-directories-first'
alias ll='eza -l --color=always --group-directories-first'
alias la='eza -a --color=always --group-directories-first'
alias lt='eza -aT --color=always --group-directories-first'

# Git (Your Custom Aliases)
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gd='git diff'
alias gl='git log --oneline --graph --decorate'

# Python
alias py='python'
alias jn='jupyter notebook'

# Tmux
alias ta='tmux attach -t'
alias tn='tmux new -s'
alias tl='tmux ls'

# Safety
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

### --- Functions -------------------------------------------------------------
mkcd() { mkdir -p "$1" && cd "$1"; }
cl() { cd "$1" && ls; } # Updated to use the new 'ls' alias

venv() {
    if [ -n "$1" ]; then
        python -m venv "$1" && source "$1/bin/activate"
    elif [ -d "venv" ]; then
        source venv/bin/activate
    elif [ -d ".venv" ]; then
        source .venv/bin/activate
    else
        echo "No virtual environment found"
    fi
}

myip() {
    curl -s https://ipinfo.io/ip
}

### --- FZF (Fuzzy Finder) ----------------------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)

### --- Environment -----------------------------------------------------------
export TMUX_PLUGIN_MANAGER_PATH="$HOME/.tmux/plugins"
typeset -U path # remove duplicate paths

# Added by Antigravity
export PATH="/Users/farjam/.antigravity/antigravity/bin:$PATH"
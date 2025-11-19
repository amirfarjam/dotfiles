###############################################################################
# ENHANCED ZSH CONFIGURATION
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

# Disable OMZ theme since we're using Spaceship manually
ZSH_THEME=""

if [ -d "$ZSH" ]; then
    source "$ZSH/oh-my-zsh.sh"
fi

### --- Spaceship Prompt ------------------------------------------------------
# Load Spaceship (must be after OMZ)
if [ -f "/opt/homebrew/opt/spaceship/spaceship.zsh" ]; then
    source "/opt/homebrew/opt/spaceship/spaceship.zsh"
fi

### --- Plugins ---------------------------------------------------------------
# Autosuggestions
if [ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    # Bind tab to accept suggestion
    bindkey '^ ' autosuggest-accept
fi

# Syntax highlighting (must load last)
if [ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

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
alias ls='ls -G'
alias ll='ls -lh'
alias la='ls -lha'

# Git
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
cl() { cd "$1" && la; }
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

# Quick IP address
myip() {
    curl -s https://ipinfo.io/ip
}

### --- Environment -----------------------------------------------------------
export TMUX_PLUGIN_MANAGER_PATH="$HOME/.tmux/plugins"
typeset -U path # Remove duplicate paths

### --- Conda (if needed) -----------------------------------------------------
# >>> conda initialize >>>
# Add conda initialization here when needed
# <<< conda initialize <<<
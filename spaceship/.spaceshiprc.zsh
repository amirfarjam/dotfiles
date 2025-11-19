###############################################################################
# SPACESHIP PROMPT CONFIGURATION
# Location: ~/dotfiles/zsh/.spaceshiprc.zsh
# Symlink: ln -sf ~/dotfiles/zsh/.spaceshiprc.zsh ~/.spaceshiprc.zsh
###############################################################################

# Order of prompt sections
SPACESHIP_PROMPT_ORDER=(
    time          # Time stamps
    user          # Username
    dir           # Current directory
    host          # Hostname
    git           # Git info
    package       # Package version
    node          # Node.js version
    ruby          # Ruby version
    python        # Python version
    docker        # Docker
    exec_time     # Execution time
    jobs          # Background jobs indicator
    exit_code     # Exit code section
    char          # Prompt character
)

### --- Time -------------------------------------------------------------------
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_PREFIX=""
SPACESHIP_TIME_SUFFIX=" "
SPACESHIP_TIME_FORMAT="%D{%H:%M:%S}"
SPACESHIP_TIME_12HR=false
SPACESHIP_TIME_COLOR="yellow"

### --- User -------------------------------------------------------------------
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_PREFIX="with "
SPACESHIP_USER_SUFFIX=""
SPACESHIP_USER_COLOR="cyan"
SPACESHIP_USER_COLOR_ROOT="red"

### --- Host -------------------------------------------------------------------
SPACESHIP_HOST_SHOW=true
SPACESHIP_HOST_SHOW_FULL=false
SPACESHIP_HOST_PREFIX="@"
SPACESHIP_HOST_SUFFIX=" "
SPACESHIP_HOST_COLOR="green"
SPACESHIP_HOST_COLOR_SSH="yellow"

### --- Directory --------------------------------------------------------------
SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_PREFIX="in "
SPACESHIP_DIR_SUFFIX=" "
SPACESHIP_DIR_TRUNC=0           # Show full directory path
SPACESHIP_DIR_TRUNC_PREFIX="…/"
SPACESHIP_DIR_TRUNC_REPO=true
SPACESHIP_DIR_COLOR="blue"

### --- Git --------------------------------------------------------------------
SPACESHIP_GIT_SHOW=true
SPACESHIP_GIT_PREFIX="on "
SPACESHIP_GIT_SUFFIX=" "
SPACESHIP_GIT_SYMBOL="  "

# Git branch
SPACESHIP_GIT_BRANCH_SHOW=true
SPACESHIP_GIT_BRANCH_PREFIX=""
SPACESHIP_GIT_BRANCH_SUFFIX=""
SPACESHIP_GIT_BRANCH_COLOR="magenta"

# Git status
SPACESHIP_GIT_STATUS_SHOW=true
SPACESHIP_GIT_STATUS_PREFIX=" ["
SPACESHIP_GIT_STATUS_SUFFIX="]"
SPACESHIP_GIT_STATUS_COLOR="red"
SPACESHIP_GIT_STATUS_UNTRACKED="?"
SPACESHIP_GIT_STATUS_ADDED="+"
SPACESHIP_GIT_STATUS_MODIFIED="!"
SPACESHIP_GIT_STATUS_RENAMED="»"
SPACESHIP_GIT_STATUS_DELETED="✘"
SPACESHIP_GIT_STATUS_STASHED="$"
SPACESHIP_GIT_STATUS_UNMERGED="="
SPACESHIP_GIT_STATUS_AHEAD="⇡"
SPACESHIP_GIT_STATUS_BEHIND="⇣"
SPACESHIP_GIT_STATUS_DIVERGED="⇕"

### --- Package ----------------------------------------------------------------
SPACESHIP_PACKAGE_SHOW=true
SPACESHIP_PACKAGE_PREFIX="is "
SPACESHIP_PACKAGE_SUFFIX=" "
SPACESHIP_PACKAGE_SYMBOL="📦 "
SPACESHIP_PACKAGE_COLOR="red"

### --- Node.js ----------------------------------------------------------------
SPACESHIP_NODE_SHOW=true
SPACESHIP_NODE_PREFIX=""
SPACESHIP_NODE_SUFFIX=" "
SPACESHIP_NODE_SYMBOL="⬢ "
SPACESHIP_NODE_DEFAULT_VERSION=""
SPACESHIP_NODE_COLOR="green"

### --- Ruby -------------------------------------------------------------------
SPACESHIP_RUBY_SHOW=true
SPACESHIP_RUBY_PREFIX=""
SPACESHIP_RUBY_SUFFIX=" "
SPACESHIP_RUBY_SYMBOL="💎 "
SPACESHIP_RUBY_COLOR="red"

### --- Python -----------------------------------------------------------------
SPACESHIP_PYTHON_SHOW=true
SPACESHIP_PYTHON_PREFIX=""
SPACESHIP_PYTHON_SUFFIX=" "
SPACESHIP_PYTHON_SYMBOL="🐍 "
SPACESHIP_PYTHON_COLOR="yellow"

### --- Docker -----------------------------------------------------------------
SPACESHIP_DOCKER_SHOW=true
SPACESHIP_DOCKER_PREFIX="on "
SPACESHIP_DOCKER_SUFFIX=" "
SPACESHIP_DOCKER_SYMBOL="🐳 "
SPACESHIP_DOCKER_COLOR="cyan"
SPACESHIP_DOCKER_VERBOSE=false

### --- Execution Time ---------------------------------------------------------
SPACESHIP_EXEC_TIME_SHOW=true
SPACESHIP_EXEC_TIME_PREFIX="took "
SPACESHIP_EXEC_TIME_SUFFIX=" "
SPACESHIP_EXEC_TIME_COLOR="yellow"
SPACESHIP_EXEC_TIME_ELAPSED=2
SPACESHIP_EXEC_TIME_PRECISION=2

### --- Background Jobs --------------------------------------------------------
SPACESHIP_JOBS_SHOW=true
SPACESHIP_JOBS_PREFIX=""
SPACESHIP_JOBS_SUFFIX=" "
SPACESHIP_JOBS_SYMBOL="✦"
SPACESHIP_JOBS_COLOR="blue"
SPACESHIP_JOBS_AMOUNT_PREFIX=""
SPACESHIP_JOBS_AMOUNT_SUFFIX=""
SPACESHIP_JOBS_AMOUNT_THRESHOLD=1

### --- Exit Code --------------------------------------------------------------
SPACESHIP_EXIT_CODE_SHOW=false
SPACESHIP_EXIT_CODE_PREFIX=""
SPACESHIP_EXIT_CODE_SUFFIX=" "
SPACESHIP_EXIT_CODE_SYMBOL="✘ "
SPACESHIP_EXIT_CODE_COLOR="red"

### --- Prompt Character -------------------------------------------------------
SPACESHIP_CHAR_SHOW=true
SPACESHIP_CHAR_PREFIX=""
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_CHAR_SYMBOL="➜"
SPACESHIP_CHAR_SYMBOL_ROOT="➜"
SPACESHIP_CHAR_SYMBOL_SECONDARY="❯"
SPACESHIP_CHAR_COLOR_SUCCESS="green"
SPACESHIP_CHAR_COLOR_FAILURE="red"
SPACESHIP_CHAR_COLOR_SECONDARY="yellow"
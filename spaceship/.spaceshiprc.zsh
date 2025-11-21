###############################################################################
# SPACESHIP PROMPT SETTINGS (SEPARATED & CLEAN)
###############################################################################

# Remove username / time / versions
SPACESHIP_USER_SHOW=false
SPACESHIP_TIME_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false

# --- Directory display ---
# Show FULL absolute path
SPACESHIP_DIR_TRUNC=0                 # no truncation (shows full path)
SPACESHIP_DIR_TRUNC_REPO=false        # don't truncate to repo root
SPACESHIP_DIR_PREFIX=""               # no extra prefix
SPACESHIP_DIR_SUFFIX=" "              # spacing after path

# Show current folder name separately (basename)
# Spaceship supports DIR_NAME module in newer versions.
# If your version doesn't, tell me and I'll give fallback.
SPACESHIP_DIR_NAME_SHOW=true
SPACESHIP_DIR_NAME_PREFIX="("         # e.g. (site)
SPACESHIP_DIR_NAME_SUFFIX=") "

# Keep git branch + status (default on)
# nothing else needed

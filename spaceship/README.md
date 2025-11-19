# 🚀 Spaceship Prompt Configuration

My personal configuration for [Spaceship Prompt](https://github.com/spaceship-prompt/spaceship-prompt) - a minimalistic, powerful and extremely customizable Zsh prompt.

## 📁 Structure

```
dotfiles/zsh/
├── .spaceshiprc.zsh    # Spaceship configuration
└── README.md           # This file
```

## 🔧 Installation

### Prerequisites

1. **Zsh** (should already be installed on macOS)
2. **Homebrew** (for installing Spaceship)
3. **Oh My Zsh** (optional but recommended)

### Install Spaceship Prompt

```bash
brew install spaceship
```

### Setup Configuration

1. **Clone/navigate to your dotfiles:**
   ```bash
   cd ~/dotfiles/zsh
   ```

2. **Create the symlink:**
   ```bash
   ln -sf ~/dotfiles/zsh/.spaceshiprc.zsh ~/.spaceshiprc.zsh
   ```

3. **Verify the symlink:**
   ```bash
   ls -la ~ | grep spaceship
   ```
   
   You should see:
   ```
   .spaceshiprc.zsh -> /Users/farjam/dotfiles/zsh/.spaceshiprc.zsh
   ```

4. **Add Spaceship to your `.zshrc`:**
   ```bash
   ### --- Spaceship Prompt ---
   # Load Spaceship (must be after OMZ if using Oh My Zsh)
   if [ -f "/opt/homebrew/opt/spaceship/spaceship.zsh" ]; then
       source "/opt/homebrew/opt/spaceship/spaceship.zsh"
   fi
   ```

5. **Reload your shell:**
   ```bash
   source ~/.zshrc
   ```

## 🔄 How It Works

Here's the complete workflow when your shell starts:

```
┌─────────────────┐
│ Shell starts    │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│ Load ~/.zshrc   │
└────────┬────────┘
         │
         ▼
┌─────────────────────────────────┐
│ Source spaceship.zsh            │
└────────┬────────────────────────┘
         │
         ▼
┌─────────────────────────────────┐
│ Spaceship auto-checks:          │
│ 1. $SPACESHIP_CONFIG?           │
│ 2. ~/.spaceshiprc.zsh? ✓        │
└────────┬────────────────────────┘
         │
         ▼
┌─────────────────────────────────┐
│ Follow symlink:                 │
│ ~/.spaceshiprc.zsh →            │
│ ~/dotfiles/zsh/.spaceshiprc.zsh │
└────────┬────────────────────────┘
         │
         ▼
┌─────────────────────────────────┐
│ Source and apply config         │
│ (all SPACESHIP_* variables)     │
└────────┬────────────────────────┘
         │
         ▼
┌─────────────────────────────────┐
│ Render your prompt              │
└─────────────────────────────────┘
```

**Key Points:**
- Spaceship **automatically** looks for `~/.spaceshiprc.zsh` on initialization
- No manual sourcing needed - it's built into Spaceship
- The symlink allows you to keep the actual config in your dotfiles repo
- Configuration is loaded before the first prompt is rendered

## ✨ Features

My prompt configuration includes:

- ⏰ **Time stamps** - Current time display
- 👤 **User & Host** - Always show username and hostname
- 📁 **Full directory path** - No truncation for clarity
- 🌿 **Git integration** - Branch, status, and indicators
- 📦 **Package versions** - Node, Python, Ruby, Docker
- ⚡ **Execution time** - Shows command duration (≥2s)
- 🎯 **Exit codes** - Visual feedback on command success
- 💼 **Background jobs** - Indicator for running jobs

## 🎨 Customization

All configuration is in `.spaceshiprc.zsh`. Key sections:

### Prompt Order
Control which sections appear and their order:
```bash
SPACESHIP_PROMPT_ORDER=(
    time
    user
    dir
    git
    # ... add or remove sections
)
```

### Colors
Customize colors for each section:
```bash
SPACESHIP_TIME_COLOR="yellow"
SPACESHIP_USER_COLOR="cyan"
SPACESHIP_DIR_COLOR="blue"
```

### Symbols
Change icons and symbols:
```bash
SPACESHIP_CHAR_SYMBOL="➜"
SPACESHIP_GIT_SYMBOL="  "
SPACESHIP_PYTHON_SYMBOL="🐍 "
```

### Behavior
Fine-tune display logic:
```bash
SPACESHIP_DIR_TRUNC=0              # 0 = show full path
SPACESHIP_EXEC_TIME_ELAPSED=2      # Show after 2 seconds
SPACESHIP_USER_SHOW=always         # always|needed|true|false
```

## 🔄 Updating Configuration

1. Edit `~/dotfiles/zsh/.spaceshiprc.zsh`
2. Reload your shell: `source ~/.zshrc`
3. Changes apply immediately!

## 📚 Resources

- [Spaceship Documentation](https://spaceship-prompt.sh/)
- [Configuration Options](https://spaceship-prompt.sh/config/intro/)
- [Available Sections](https://spaceship-prompt.sh/sections/)

## 🐛 Troubleshooting

### Config not loading?
```bash
# Check if symlink exists
ls -la ~/.spaceshiprc.zsh

# Check if Spaceship is sourced in .zshrc
grep spaceship ~/.zshrc

# Test manually
source ~/.spaceshiprc.zsh && source ~/.zshrc
```

### Prompt looks wrong?
```bash
# Ensure you have a Nerd Font installed for icons
# Recommended: FiraCode Nerd Font, MesloLGS NF

# Check terminal supports 256 colors
echo $TERM  # should be xterm-256color
```

### Slow prompt?
```bash
# Disable sections you don't need in SPACESHIP_PROMPT_ORDER
# Or set specific sections to false:
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
```

## 📝 License

Personal configuration - feel free to use and modify!

---README.md
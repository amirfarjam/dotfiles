🔧 My Dotfiles

Personal configuration files for macOS.

📦 Included Configurations

AeroSpace - Tiling Window Manager

(More coming soon...)

🚀 Installation

I use manual symbolic links to manage these files.

1. Clone the repository

git clone [https://github.com/amirfarjam/dotfiles.git](https://github.com/amirfarjam/dotfiles.git) ~/dotfiles


2. Link configurations

AeroSpace:

# Backup existing config
mv ~/.aerospace.toml ~/.aerospace.toml.bak

# Link new config
ln -s ~/dotfiles/aerospace/aerospace.toml ~/.aerospace.toml


⚖️ License

MIT

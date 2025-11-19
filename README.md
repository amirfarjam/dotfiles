# ⚙️ Dotfiles

A modular collection of configuration files for tools and applications I use.  
Each tool lives in its own folder with its own README and configuration files, making the setup easy to navigate and extend.

## 📁 Repository Structure

```
dotfiles/
├── aerospace/
│   ├── aerospace.toml
│   └── README.md
├── spaceship/
│   └── README.md
├── zsh/
│   └── (Zsh configuration files)
└── README.md   ← this file
```

Each directory contains:
- The configuration file(s) for that tool
- A dedicated `README.md` explaining usage, installation, and customizations

This structure keeps the root README general while allowing specific instructions to live where they belong.

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone <your-repo-url> ~/dotfiles
cd ~/dotfiles
```

### 2. Link configuration files

Create symbolic links so your system uses the configs from this repository:

```bash
ln -s ~/dotfiles/<tool>/<configfile> ~/.<configfile>
```

Always back up existing configs first:

```bash
mv ~/.<configfile> ~/.<configfile>.bak
```

### 3. Reload or restart your shell/app

Changes take effect when the tool re-reads its config.

---

## 🧩 How This Repo Is Organized

This repository is **modular**:

- `zsh/` — Shell configuration  
- `aerospace/` — Tiling window manager settings  
- `spaceship/` — Prompt configuration  
- `...` — More tools will be added over time  

As new dotfiles are added, simply create a new folder with its own README and place the configuration files inside.

---

## 🔧 Customization & Maintenance

- Edit files directly inside the repo — most configs are symlinked, so changes apply instantly  
- Add new tools by creating a new folder and documenting it with a local README  
- Keep tool-specific instructions in their own directories to avoid cluttering the root README  

---

## 🐛 Troubleshooting

- Ensure symlinks target the correct paths  
- Restart the shell/application after updating configs  
- Fix script permissions if required:

```bash
chmod +x ~/dotfiles/scripts/*.sh 2>/dev/null || true
```

---

## ⚖️ License

MIT License — free to modify, adapt, and use.

# AeroSpace Configuration

My custom configuration for the [AeroSpace](https://github.com/nikitabobko/AeroSpace) tiling window manager.

## ⌨️ Cheat Sheet
**Modifier Key:** `Ctrl` (Changed from default Option/Alt to avoid macOS conflicts)

### Navigation
| Action | Shortcut |
| :--- | :--- |
| **Focus Window** | `Ctrl` + `h` (Left) / `j` (Down) / `k` (Up) / `l` (Right) |
| **Move Window** | `Ctrl` + `Shift` + `h` / `j` / `k` / `l` |
| **Move Workspace** | `Ctrl` + `0-9` |
| **Move Window to Workspace** | `Ctrl` + `Shift` + `0-9` |
| **Switch Monitor** | `Ctrl` + `j` (Down) / `k` (Up) |

### Layouts (Manual Tiling)
*Note: `enable-normalization-flatten-containers` is set to `false` to allow manual splits.*

| Action | Shortcut |
| :--- | :--- |
| **Split Vertical** | `Ctrl` + `;` (Next window appears below) |
| **Split Horizontal** | `Ctrl` + `'` (Next window appears to the side) |
| **Fullscreen** | `Ctrl` + `f` |
| **Float Window** | `Ctrl` + `Shift` + `f` |

## 🖥 Monitor Setup
This config forces workspaces to specific screens to handle the laptop/external monitor disconnect cycle gracefully.

* **External Monitor (Main):** Workspaces `1` - `9`
* **Laptop Screen (Secondary):** Workspaces `10` & `A`

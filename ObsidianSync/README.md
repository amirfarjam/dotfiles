# Obsidian One-Way Sync (OneDrive → iCloud)

This setup provides a **one-way sync** that mirrors an Obsidian vault
stored in\
**OneDrive** into a read-only copy inside **iCloud Drive**.\
Useful if your main vault lives on your Mac/Windows/OneDrive, but you
want your\
iPhone/iPad to **view** (not edit) the notes through iCloud.

-   Source:
    `$HOME/Library/CloudStorage/OneDrive-UniversityofEdinburgh/Obsidian/ObsidianED`
-   Destination:
    `$HOME/Library/Mobile Documents/com~apple~CloudDocs/MyObsEd`
-   Sync method: `rsync` (mirror mode, deletes removed files on
    destination)

iPad/iPhone changes will be overwritten on next sync, effectively making
iCloud *read-only*.

## 🔧 Files

-   `sync_obsidian.sh` --- main sync script\
-   `com.farjam.obsidiansync.plist` --- LaunchAgent to run daily at
    03:00

## 🔗 Symlink Setup

``` bash
ln -sf ~/dotfiles/ObsidianSync/sync_obsidian.sh ~/sync_obsidian.sh
ln -sf ~/dotfiles/ObsidianSync/com.farjam.obsidiansync.plist       ~/Library/LaunchAgents/com.farjam.obsidiansync.plist
```

## 🚀 Load the LaunchAgent (run once)

``` bash
launchctl load ~/Library/LaunchAgents/com.farjam.obsidiansync.plist
```

## ⏹️ Unload (disable)

``` bash
launchctl unload ~/Library/LaunchAgents/com.farjam.obsidiansync.plist
```

## 🔄 Manually trigger sync

``` bash
~/sync_obsidian.sh
```

or

``` bash
launchctl start com.farjam.obsidiansync
```

## 🔍 Check status

``` bash
launchctl list | grep obsidiansync
```

## Logs

``` bash
cat ~/Library/Logs/obsidian_sync.log
```

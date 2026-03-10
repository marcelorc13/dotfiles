# Tmux
This guide explains how to install and manage plugins using [tpm](https://github.com/tmux-plugins/tpm).

## 1. Installation

First, clone the `tpm` repository into your local tmux folder:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## 2. Configuration

Add the following lines to the very bottom of your `~.tmux.conf` file.

> **Note:** The order matters. The `tpm` initialization must be at the end of the file.

```tmux
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Add more plugins here:
# set -g @plugin 'github_username/plugin_name'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

## 3. Usage Keybindings

Once configured, use these shortcuts to manage your plugins:

| Action | Keybinding | Description |
| --- | --- | --- |
| **Install** | `Prefix` + `I` | Installs new plugins and refreshes the environment. |
| **Update** | `Prefix` + `U` | Updates existing plugins. |
| **Clean** | `Prefix` + `alt` + `u` | Removes plugins not listed in the config. |


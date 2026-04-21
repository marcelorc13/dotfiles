# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository overview

This is a personal dotfiles repository for an Arch Linux + [Omarchy](https://omarchy.org) desktop environment. All configs are symlinked into place using `ln_all.sh`.

## Applying changes

```bash
# Re-run symlinks (from repo root, must run from within the directory)
cd ~/.dotfiles && bash ln_all.sh

# Reload individual configs without restart
srct                          # reload tmux (~/.tmux.conf)
srcz                          # reload zsh (~/.zshrc)
hyprctl reload                # reload Hyprland
```

## Structure and symlink targets

| Repo path | Symlinked to |
|---|---|
| `nvim/` | `~/.config/nvim/` |
| `hypr/` | `~/.config/hypr/` |
| `waybar/` | `~/.config/waybar/` |
| `kitty/` | `~/.config/kitty/` |
| `yazi/` | `~/.config/yazi/` |
| `lazygit/` | `~/.config/lazygit/` |
| `gh-dash/` | `~/.config/gh-dash/` |
| `diffnav/` | `~/.config/diffnav/` |
| `starship.toml` | `~/.config/starship.toml` |
| `.tmux.conf` | `~/.tmux.conf` |
| `.aliases` | `~/.aliases` |

## Neovim (`nvim/`)

Plugin manager: **lazy.nvim**. Entry point: `nvim/init.lua`.

**Directory layout:**
- `lua/config/lazy.lua` — plugin list (all plugins loaded here)
- `lua/config/core.lua` — vim options
- `lua/config/keymaps.lua` — global keymaps
- `lua/plugins/` — one file per plugin group (lsp, cmp, telescope, oil, etc.)

**LSP setup** (`lua/plugins/lsp.lua`): mason + mason-lspconfig. Auto-installed servers: `lua_ls`, `gopls`, `templ`, `ts_ls`, `pyright`, `tinymist`, `yamlls`. `omnisharp` and `ruby_lsp` are configured but not in `ensure_installed`. TypeScript/JS buffers auto-organize imports on save. Omnisharp has semantic tokens disabled to avoid conflicts.

**Key leader mappings** (leader = `<Space>`):
- `<leader>jf` — Telescope find files
- `<leader>ff` — Telescope live grep
- `<leader>jc` — Telescope buffers
- `<leader>je` — Oil (file explorer)
- `<leader>F` — LSP format
- `<leader>rr` — LSP rename
- `<leader>ca` — LSP code action
- `<leader>en`/`eN` — next/prev diagnostic
- `<leader>sh`/`sv` — horizontal/vertical split

## Hyprland (`hypr/`)

Sources Omarchy defaults from `~/.local/share/omarchy/default/hypr/` — **do not edit those files**. Local overrides live in this repo's `hypr/` files which are sourced after defaults.

**Config files:**
- `hyprland.conf` — main entry, sources everything
- `monitors.conf` — monitor layout
- `input.conf` — keyboard/mouse/touchpad settings
- `looknfeel.conf` — gaps, borders, layout (scrolling), animations, rounding
- `autostart.conf` — startup apps (waybar, mako, hypridle, swaybg via uwsm-app)
- `bindings.conf` — sources `binds/tiling.conf`, `binds/utilities.conf`, `binds/unbinddefault.conf`

**Key bindings summary:**
- `SUPER + Return` — terminal
- `SUPER + Space` — app launcher (walker)
- `SUPER + H/J/K/L` — window focus (vim keys); note `K` is bound to keybindings menu in utilities
- `SUPER + arrows` — swap windows
- `SUPER + 1-9` — switch workspaces
- `SUPER + W` — close window
- `SUPER + F` — full width; `SUPER+SHIFT+F` — fullscreen
- `SUPER+CTRL+L` — lock screen

## Waybar (`waybar/`)

- `config.jsonc` — module layout (top bar: workspaces left, clock+status center, tray/system right)
- `style.css` — appearance

Waybar reloads styles automatically (`reload_style_on_change: true`). Toggle with `SUPER+SHIFT+Space`.

## Kitty (`kitty/`)

- Font: `RobotoMono Nerd Font Mono Bold`, size 10
- Theme: Kanagawa Dragon (via `include current-theme.conf`)
- Block cursor, no blink

## Yazi (`yazi/`)

- `theme.toml` / `flavors/` — Kanagawa Dragon theme flavor
- `package.toml` — plugin dependencies

## Theme

Consistent **Kanagawa Dragon** theme across: Neovim (`colorscheme kanagawa-dragon`), Kitty, and Yazi.

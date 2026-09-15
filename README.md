## About project
Personal Neovim config built on the [NvChad](https://nvchad.com) starter, `v2.5` branch. NvChad provides the base UI/plugin framework (`lua/chadrc.lua` customizes its theme/UI options); everything under `lua/plugins/` and `lua/configs/` is my own customization on top of it.

## System prerequisites
Install these on any new machine before opening Neovim, or the config will fail partway through (broken syntax highlighting, missing LSP features):

- **Neovim 0.11+** (developed against 0.12.x)
- **git** — for lazy.nvim and plugin installs
- **A C compiler** (`gcc`/`clang`) and **`tree-sitter-cli`** — required to build treesitter parsers (`nvim-treesitter` shells out to `tree-sitter build`)
- **ripgrep** and **fd** — used by Telescope for live grep / file finding
- **A Nerd Font** — set as your terminal font, or file/UI icons render as boxes
- **Node.js/npm** — some LSP servers (`ts_ls`, `bashls`, `jsonls`) install via npm through Mason

Arch:
```
sudo pacman -S git base-devel tree-sitter-cli ripgrep fd nodejs npm
```

## First-time setup on a new machine
1. Back up any existing config: `mv ~/.config/nvim ~/.config/nvim.bak`
2. Clone this repo to `~/.config/nvim`
3. Launch `nvim` — `lazy.nvim` bootstraps itself and installs all plugins automatically
4. Treesitter parsers listed in `ensure_installed` (`lua/plugins/init.lua`) install automatically on startup
5. Install the LSP servers used in `lua/configs/lspconfig.lua` via Mason: run `:Mason` and install `html`, `cssls`, `gopls`, `jsonls`, `pyright`, `bashls`, `clangd`, `lua_ls`, `ts_ls`, `terraformls` (these are **not** auto-installed — Mason is available but no `ensure_installed` list is configured for it yet)
6. Restart Neovim once everything finishes installing

## Structure
- `lua/chadrc.lua` — NvChad UI/theme overrides
- `lua/plugins/init.lua` — additional/overridden plugins (treesitter, conform, lspconfig, surround, autotag, fugitive, diffview)
- `lua/configs/lspconfig.lua` — LSP server list and per-server overrides
- `lua/configs/conform.lua` — formatter config
- `lua/mappings.lua`, `lua/options.lua` — custom keymaps and Neovim options

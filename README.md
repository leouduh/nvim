## About project
This is my neovim config based on the nvchad starter version 2.5 config

## System prerequisites
Install these before opening Neovim on a new machine, or treesitter parsers will fail to build and syntax highlighting will be missing:
- `tree-sitter-cli` (the `tree-sitter` binary — nvim-treesitter shells out to `tree-sitter build`)
- a C compiler (`gcc`/`clang`, e.g. Arch's `base-devel` group) — needed to compile the generated parser C code

Arch:
```
sudo pacman -S tree-sitter-cli base-devel
```

# Portable Vim configuration

This repository is the lightweight, plugin-free fallback for machines where
Neovim and the full plugin stack are unnecessary. Its options and key mappings
follow the active Neovim configuration on the primary MacBook.

## Install

```sh
git clone https://github.com/tangkesui/.vim.git ~/.vim
```

Vim reads `~/.vim/vimrc` automatically when `~/.vimrc` is absent. No plugin
manager, plugin download, build step, or theme installation is required.

## Key differences from stock Vim

- Movement is `i` up, `k` down, `j` left, and `l` right.
- `h` enters Insert mode; `H` inserts at the beginning of the line.
- `<Space>` is the leader key.
- `<Space>-` / `<Space>=` move through search results and center them.
- `<Space>r` reloads the current file; `<Space><Enter>` clears search highlight.
- `Alt-i` / `Alt-k` and the up/down arrows jump five lines and center the view.
- `mm` opens a new tab; built-in `gt` / `gT` switch tabs.

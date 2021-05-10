# UltiRequiem NeoVim

<p align="center">
<img src="https://i.imgur.com/L5ZQlCs.png">
</p>

## Table of contents

- [Introduction](#introduction)
- [Requirements](#requirements)
- [Installation](#installation)
- [Features](#features)
  - [Suported Lenguages](#suported-languages)
  - [LSP](#lsp)
  - [Git Integration](#git-integration)
  - [Navigation](#navigation)
- [Mappings](#mappings)
- [License](#license)

## Introduction

This configuration tries to make Vim/Nvim as or smarter than any other IDE without installing too many plugins. It has syntax highlighting,
smart autocompletion, integrated debug, linting, snippets and git integration.

## Requirements

This configuration is made for **Neovim**, although it should work fine for **Vim** with a few changes as well.

- [Neovim](https://github.com/neovim/neovim) >= [v0.5.0](https://github.com/neovim/neovim/releases)
- [Nodejs](https://github.com/nodejs/node) >= [10.12](https://github.com/nodejs/node/releases)

```bash
  npm install -g neovim
```

- [Python3](https://www.python.org/download/releases/3.0)

```bash
pip3 install --upgrade pynvim
```

## Features

### Suported Languages

- HTML, CSS
- Javascript, Typescript, JSReact, etc...
- Python
- Go
- Other files like: Markdown, Vimscript, Json, etc...

### LSP

Intelligent auto completion and linting for almost any language, using [LSP](https://langserver.org) with [coc.nvim](https://github.com/neoclide/coc.nvim).

### Git Integration

Git Integration with plugins like [Fugitive](https://github.com/tpope/vim-fugitive) and [GitGutter](https://github.com/airblade/vim-gitgutter).

### Navigation

- [NerdTree](https://github.com/preservim/nerdtree): View your folders in tree visualization like in VSCode or other IDES
- [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): Move like a god inside your proyect

### All Plugins

You can see a list with all the plugins [here](./pack/README.md)

## Structure of this configuration:

```
$HOME/.config/nvim
├── pack: Plugins
├── plugins: Plugins configurations and mappings
│   ├── git.vim
│   ├── go.vim
│   ├── nerdtree.vim
│   ├── etc
├── undodir: Undo Files
├── coc-settings.json: Coc Config
└── init.vim: General Cofig
```

## Mappings

Leader key: <kbd>space</kbd>

General Stuff:
| Mapping | Mode | Actions |
|:------------------------------|:-----|:--------------------------------------|
| <kbd>space</kbd><kbd>w</kbd> | n | Save current buffer |
| <kbd>space</kbd><kbd>q</kbd> | n | Close current buffer |
| <kbd>space</kbd><kbd>qq</kbd> | n | Quickly Close current buffer |
| <kbd>ctrl</kbd><kbd>n</kbd> | n | Jump to next buffer |
| <kbd>ctrl</kbd><kbd>m</kbd> | n | Jump to previous buffer |
| <kbd>space</kbd><kbd>dd</kbd> | n | Jump to Definition |
| <kbd>space</kbd><kbd>dr</kbd> | n | Jump to References |
| <kbd>space</kbd><kbd>dj</kbd> | n | Jump to Implementation |
| <kbd>ctrl</kbd><kbd>p</kbd> | n | Search files |
| <kbd>F2</kbd> | n | NerdTree |

Git Stuff:
| Mapping | Mode | Actions |
|:------------------------------|:-----|:--------------------------------------|
| <kbd>space</kbd><kbd>gg</kbd> | n | Git add . |
| <kbd>space</kbd><kbd>gc</kbd> | n | Git commit -m "" |
| <kbd>space</kbd><kbd>gp</kbd> | n | Git Push |
| <kbd>space</kbd><kbd>ge</kbd> | n | Gist Creat |
| <kbd>space</kbd><kbd>gu</kbd> | n | Gist Update |
| <kbd>space</kbd><kbd>gs</kbd> | n | Gist Search |

Specif Language Stuff
| Mapping | Mode | Actions |
|:------------------------------|:-----|:--------------------------------------|
| <kbd>space</kbd><kbd>gr</kbd> | n | Go Run current file|
| <kbd>space</kbd><kbd>gd</kbd> | n | Go jump to Documentation|
| <kbd>space</kbd><kbd>rp</kbd> | n | Python Run current file|
| <kbd>space</kbd><kbd>nd</kbd> | n | Node Run current file|

## License

MIT © [UltiRequiem](https://github.com/UltiRequiem)

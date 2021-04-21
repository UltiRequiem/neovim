# UltiRequiem NeoVim

<p align="center">
<img src="https://i.imgur.com/L5ZQlCs.png">
</p>

## Table of contents

- [Introduction](#introduction)
- [Requirements](#requirements)
  - [System](#system)
  - [NeoVim](#neovim)
  - [Nodejs](#nodejs)
- [Installation](#istallation)
- [Features](#features)
  - [Suported Lenguages](#suported-lenguages)
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

## Installation

You can find the installation instructions [here](https://github.com/UltiRequiem/UltiVim/releases/latest). Don't forget to install a nerd-font to have icons inside Neovim.

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
| Mapping                       | Mode | Actions                               |
|:------------------------------|:-----|:--------------------------------------|
| <kbd>space</kbd><kbd>w</kbd>  | n    | Save current buffer |
| <kbd>space</kbd><kbd>q</kbd>  | n    | Close current buffer |
| <kbd>space</kbd><kbd>qq</kbd> | n    | Quickly Close current buffer |
| <kbd>ctrl</kbd><kbd>n</kbd>   | n    | Jump to next buffer |
| <kbd>ctrl</kbd><kbd>m</kbd>   | n    | Jump to previous buffer |

## License

MIT © [UltiRequiem](https://github.com/UltiRequiem)

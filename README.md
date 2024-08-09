# Neovim Configuration Using Lua and Vim-Plug

## Introduction
This Neovim configuration uses Lua as the primary language for the configuration and Vim-Plug as the plugin manager. Lua is a powerful and lightweight scripting language that integrates seamlessly with Neovim, allowing for a more flexible and customizable setup. Vim-Plug is a popular plugin manager for Vim and Neovim, which makes it easy to manage and install plugins.

## Directory Structure
The configuration files are organized in the following directory structure:

```
~/.config/nvim/
├── init.lua
├── lua/
│   ├── core/
│   │   ├── options.lua
│   │   ├── keymaps.lua
│   │   └── autocmds.lua
│   └── plugins/
│       ├── colors.lua
│       ├── treesitter.lua
│       └── completion.lua
└── plugins.lua
```

- `init.lua`: The main entry point for Neovim's configuration. It loads the core configuration files and sets up the Vim-Plug plugin manager.
- `lua/core/`: This directory contains the core configuration files for Neovim, such as options, keymaps, and autocmds.
- `lua/plugins/`: This directory contains the configuration files for various plugins, such as the Language Server Protocol (LSP), treesitter, and completion.
- `plugins.vim`: This file is used by Vim-Plug to manage the installation and configuration of plugins.

## Vim-Plug Configuration
The `plugins.vim` file is used to manage the installation and configuration of plugins. Here's an example configuration:

```lua
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('preservim/nerdtree', { ['on'] = 'NERDTreeToggle' })
Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })
Plug('ellisonleao/gruvbox.nvim')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'})
Plug('junegunn/fzf', { ['do'] = '{ -> fzf#install() }' })
Plug('junegunn/fzf.vim')

vim.call('plug#end')
```

In this example, we're using Vim-Plug to install and configure several core plugins, as well as some appearance-related plugins. The `call plug#begin()` and `call plug#end()` functions are used to define the start and end of the plugin section, respectively.

## Lua Configuration
The Lua configuration files are located in the `lua/` directory. Here's an example of the `lua/core/options.lua` file:

```lua
-- Set options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
```

In this example, we're setting various Neovim options using the `vim.opt` table. These options control the appearance and behavior of Neovim.

## Conclusion
By using Lua as the configuration language and Vim-Plug as the plugin manager, this Neovim configuration provides a flexible and customizable setup. The modular structure of the configuration files makes it easy to maintain and extend the configuration as needed.

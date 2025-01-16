# My Neovim Configuration

This is my personal Neovim configuration based on the [lazy.nvim](https://github.com/folke/lazy.nvim.git) plugin manager.

## Features

- Fast startup time with lazy-loading plugins
- Modern UI with catppuccin theme
- Syntax highlighting and autocompletion
- File explorer with neo-tree
- Git integration
- LSP support for various languages
- Treesitter for better syntax understanding
- And more!

## Prerequisites

- Neovim >= 0.8.0
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (optional, but recommended)
- ripgrep

## Installation

1. Back up your existing Neovim configuration:

```sh
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

2. Clone this repository:

```sh
git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim
```

3. Start Neovim:

```sh
nvim
```

lazy.nvim will automatically install plugins on the first run.

## Customization

- Add or modify plugins in `lua/plugins`
- Adjust keymaps or change options in `lua/config/lazy.lua`

## Contributing

Feel free to open issues or submit pull requests if you have suggestions for improvements.

## License

This project is licensed under the Apache License - see the [LICENSE](LICENSE) file for details.

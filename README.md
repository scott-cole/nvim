# Neovim Config

My personal Neovim configuration.

## Setup on a new machine

1. Install prerequisites:
   - [Neovim](https://neovim.io/) (v0.11+)
   - [Git](https://git-scm.com/)
   - A [Nerd Font](https://www.nerdfonts.com/) (recommended)
   - `make` (for Telescope FZF native)
   - `rg` (ripgrep, for Telescope live grep)

2. Back up any existing config:
   ```sh
   mv ~/.config/nvim ~/.config/nvim.bak
   rm -rf ~/.local/share/nvim
   ```

3. Clone this repo:
   ```sh
   git clone https://github.com/scottwalke/nvim.git ~/.config/nvim
   ```

4. Start Neovim — plugins will install automatically on first launch:
   ```sh
   nvim
   ```

## File structure

```
~/.config/nvim/
├── init.lua                  Entry point
├── lua/scott/
│   ├── options.lua           Vim options (numbers, tabs, etc.)
│   ├── keymaps.lua           General keymaps
│   ├── autocmds.lua          Autocommands
│   └── plugins/              Each plugin in its own file
│       ├── autopairs.lua
│       ├── blink.lua         Autocompletion
│       ├── colorscheme.lua
│       ├── conform.lua       Auto-formatting
│       ├── debug.lua         DAP debugger
│       ├── gitsigns.lua
│       ├── guess-indent.lua
│       ├── harpoon.lua
│       ├── indent-line.lua
│       ├── lazydev.lua
│       ├── lint.lua
│       ├── lsp.lua
│       ├── mini.lua
│       ├── telescope.lua
│       ├── todo-comments.lua
│       ├── treesitter.lua
│       └── which-key.lua
├── .stylua.toml
└── lazy-lock.json
```

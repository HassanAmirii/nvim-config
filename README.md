## Features

- **Modern Plugin Management**: Utilizes `lazy.nvim` for declarative, performant, and lazy-loaded plugin management.
- **Comprehensive LSP Support**: Integrated with `mason` and `nvim-lspconfig` for robust language features across multiple languages including Lua, TypeScript, Python, HTML, CSS, JSON, and YAML, with format-on-save capabilities.
- **Intelligent Code Completion**: Powered by `nvim-cmp` and `LuaSnip` for context-aware suggestions and snippet expansion.
- **Fuzzy Finding Excellence**: `telescope.nvim` provides a highly configurable and extensible fuzzy finder for files, buffers, help tags, and more.
- **Intuitive File Navigation**: `nvim-tree.lua` offers a powerful and visually appealing file explorer with Git integration and live root updates.
- **Enhanced User Interface**: Features a clean `catppuccin` colorscheme, a dynamic `lualine` status line, and a beautiful `alpha-nvim` dashboard for quick access to common actions.
- **Advanced Text Object Motions**: `flash.nvim` provides lightning-fast character-based motions for efficient cursor movement.
- **Git Integration**: `gitsigns.nvim` displays Git status directly in the sign column, offering quick insights into changes.
- **Structured Syntax Highlighting**: `nvim-treesitter` for advanced, syntax-aware highlighting and indentation.
- **Automated Code Formatting**: `conform.nvim` integrates various formatters (e.g., Prettier) to ensure consistent code style on save.
- **Keybinding Discovery**: `which-key.nvim` offers an intuitive popup to discover available keybindings.
- **Session Management**: Automatically saves and restores the last working directory.
- **Discord Presence**: Shows your current Neovim activity on Discord using `presence.nvim`.

## Getting Started

### Installation

To set up this Neovim configuration, follow these steps:

1.  **Backup Existing Configuration (Optional but Recommended)**:
    If you have an existing Neovim configuration, back it up first:

    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    mv ~/.local/state/nvim ~/.local/state/nvim.bak
    mv ~/.cache/nvim ~/.cache/nvim.bak
    ```

2.  **Clone the Repository**:
    Clone this repository into your Neovim configuration directory:

    ```bash
    git clone https://github.com/HassanAmirii/nvim-config.git ~/.config/nvim
    ```

3.  **Launch Neovim**:
    Open Neovim. The `lazy.nvim` plugin manager will automatically bootstrap itself and install all specified plugins. This might take a few moments on the first launch.

    ```bash
    nvim
    ```

4.  **Install Language Servers and Formatters (Optional)**:
    While `mason.nvim` will manage LSP and formatter installations, you can manually open the Mason UI to verify or install specific tools.
    ```
    :Mason
    ```

### Environment Variables

No specific environment variables are strictly required for the core functionality of this Neovim configuration. However, individual language servers or formatters managed by Mason might require their own environment variables, depending on your project setup.

## Usage

Upon launching Neovim, you'll be greeted by the `alpha-nvim` dashboard, offering quick access to common actions like finding files, opening recent files, or creating a new buffer.

### Keybindings

This configuration provides a rich set of keybindings, all discoverable via `which-key.nvim` by pressing `<leader>` (defaults to space). Below are some essential shortcuts:

#### General Navigation & Editing

- `<leader>e`: Toggle the `nvim-tree` file explorer.
- `<leader>ff`: Find files using Telescope.
- `<leader>fg`: Live grep (search content) using Telescope.
- `<leader>fb`: List open buffers using Telescope.
- `<leader>fo`: Open recent files using Telescope.
- `<leader>fk`: View all keymaps using Telescope.
- `<leader>a`: Select all content in the current buffer and copy to clipboard.
- `<leader>y`: Copy selected text or current line to the system clipboard.
- `<leader>v`: Paste from the system clipboard after the cursor.
- `<leader>V`: Paste from the system clipboard before the cursor.

#### Language Server Protocol (LSP)

- `gd`: Go to definition.
- `gD`: Go to declaration.
- `gr`: Find references.
- `gi`: Go to implementation.
- `K`: Show hover documentation.
- `<leader>rn`: Rename symbol.
- `<leader>ca`: Open code actions.
- `<leader>sd`: Show diagnostics for the current line in a floating window.
- `[d`: Go to previous diagnostic.
- `]d`: Go to next diagnostic.

#### Completion (`nvim-cmp`)

- `<C-Space>`: Manually trigger completion.
- `<CR>`: Confirm selected completion item.
- `<Tab>`: Navigate to the next completion item or expand/jump through snippets.
- `<S-Tab>`: Navigate to the previous completion item or jump backward in snippets.

### Automatic Formatting

When configured language servers are active and `conform.nvim` is set up for the filetype, your code will be automatically formatted on save (`BufWritePre`).

## Technologies Used

| Technology               | Description                                        |
| :----------------------- | :------------------------------------------------- |
| **Neovim**               | The core extensible Vim-based text editor.         |
| **Lua**                  | Scripting language for configuration and plugins.  |
| **lazy.nvim**            | Fast and powerful plugin manager.                  |
| **catppuccin**           | Elegant, pastel-colored theme.                     |
| **which-key.nvim**       | Popup guide for keybindings.                       |
| **flash.nvim**           | Speedy character-based motion.                     |
| **nvim-tree.lua**        | Feature-rich file explorer.                        |
| **lualine.nvim**         | Highly customizable status line.                   |
| **gitsigns.nvim**        | Git integration in the sign column.                |
| **alpha-nvim**           | Customizable dashboard for Neovim.                 |
| **telescope.nvim**       | Flexible fuzzy finder framework.                   |
| **presence.nvim**        | Discord Rich Presence integration.                 |
| **mason.nvim**           | Universal LSP and formatter installer.             |
| **mason-lspconfig.nvim** | Bridges Mason with nvim-lspconfig.                 |
| **nvim-lspconfig**       | Easily set up language servers.                    |
| **nvim-cmp**             | Completion engine.                                 |
| **LuaSnip**              | Snippet engine for Neovim.                         |
| **nvim-treesitter**      | Parser generator for syntax highlighting and more. |
| **conform.nvim**         | Formatter integration for various languages.       |

---

[![Neovim](https://img.shields.io/badge/Made%20with-Neovim-57A143?style=flat&logo=neovim&logoColor=white)](https://neovim.io/)
[![Lua](https://img.shields.io/badge/Coded%20in-Lua-2C2D72?style=flat&logo=lua&logoColor=white)](https://www.lua.org/)
[![Plugin Manager](https://img.shields.io/badge/Plugins%20by-lazy.nvim-orange?style=flat&logo=lua&logoColor=white)](https://github.com/folke/lazy.nvim)

[![Readme was generated by Dokugen](https://img.shields.io/badge/Readme%20was%20generated%20by-Dokugen-brightgreen)](https://www.npmjs.com/package/dokugen)

# Optimized Neovim Configuration

## Overview
This repository provides a highly optimized and feature-rich Neovim configuration, meticulously crafted to transform Neovim into a powerful and intuitive IDE. Built entirely in Lua, it leverages a modern plugin ecosystem to deliver an efficient and ergonomic development experience.

## Features
- **Effortless Plugin Management**: Utilizes `lazy.nvim` for fast, declarative, and on-demand plugin loading, ensuring a snappy startup time.
- **Comprehensive Language Support**: Integrated Language Server Protocol (LSP) with `nvim-lspconfig` and `mason.nvim` for intelligent code completion, diagnostics, formatting, and refactoring across multiple languages (Python, TypeScript, HTML, CSS, JSON, YAML).
- **Intelligent Code Completion**: Powered by `nvim-cmp` and `LuaSnip` for context-aware suggestions and snippet expansion.
- **Enhanced Syntax Highlighting**: `nvim-treesitter` provides accurate and performant syntax highlighting, folding, and indentation for improved code readability.
- **Fuzzy Finding & Navigation**: `Telescope.nvim` offers a fast, extensible fuzzy finder for files, buffers, help tags, and more, streamlining project navigation.
- **Intuitive File Explorer**: `nvim-tree.lua` provides a modern, tree-style file explorer for efficient file system management.
- **Status Line & UI Polish**: `lualine.nvim` creates a customizable and informative status line, while `alpha-nvim` delivers an elegant dashboard for quick actions.
- **Git Integration**: `gitsigns.nvim` provides visual feedback for Git changes directly within the editor, enhancing version control workflows.
- **Seamless Formatting**: `conform.nvim` integrates various formatters (e.g., Prettier) to automatically format code on save, maintaining consistent code style.
- **Smart Keymap Discovery**: `which-key.nvim` displays available keybindings on the fly, making it easy to learn and utilize the extensive keymap setup.
- **Advanced Text Motions**: `flash.nvim` offers lightning-fast, two-character motions for efficient navigation within lines and files.
- **Clipboard Synchronization**: Integrates with the system clipboard for seamless copy-ppasting.
- **Custom Autocommands**: Includes smart behaviors like highlighting on yank, automatic split resizing, and remembering cursor positions.
- **Discord Rich Presence**: `presence.nvim` displays your current Neovim activity on Discord.

## Getting Started
To get this Neovim configuration up and running on your local machine, follow these steps:

### Prerequisites
- **Neovim (v0.9.0 or higher)**: Ensure you have a recent version of Neovim installed.
- **Git**: Required for cloning the repository.
- **Node.js & npm (optional but recommended)**: For various LSP servers and formatters (e.g., `prettier`, `typescript-language-server`).
- **Python (optional but recommended)**: For Python LSP (`pyright`).

### Installation
1.  **Backup Existing Configuration (Optional)**:
    If you have an existing Neovim configuration, consider backing it up:
    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    ```

2.  **Clone the Repository**:
    Clone this repository into your Neovim configuration directory:
    ```bash
    git clone git@github.com:HassanAmirii/nvim-config.git ~/.config/nvim
    ```

3.  **Launch Neovim**:
    Open Neovim. The `lazy.nvim` plugin manager will automatically detect the new configuration and install all specified plugins. This process may take a few moments on the first run.
    ```bash
    nvim
    ```

4.  **Install Language Servers and Formatters (Optional)**:
    While `mason.nvim` will prompt you to install some, you can manually install additional language servers and formatters as needed via Mason:
    ```
    :Mason
    ```
    Then select and install desired LSPs (e.g., `pyright`, `ts_ls`, `html`, `cssls`, `jsonls`, `yamlls`) and formatters (e.g., `prettier`).

## Usage
Once installed, launch Neovim by typing `nvim` in your terminal.
The `alpha-nvim` dashboard will greet you with quick navigation options.

### Keybindings
This configuration uses `<space>` as the global leader key.
-   **File Navigation**:
    -   `<leader>e`: Toggle `nvim-tree` (file explorer).
    -   `<leader>ff`: Find files using `Telescope`.
    -   `<leader>fg`: Live grep (search content) using `Telescope`.
    -   `<leader>fo`: Open recent files using `Telescope`.
    -   `<leader>fb`: List open buffers using `Telescope`.
-   **LSP Features**:
    -   `gd`: Go to definition.
    -   `gD`: Go to declaration.
    -   `gr`: Find references.
    -   `gi`: Go to implementation.
    -   `K`: Show hover documentation.
    -   `<leader>rn`: Rename symbol.
    -   `<leader>ca`: Apply code action.
-   **Diagnostics**:
    -   `<leader>sd`: Show diagnostics in a floating window.
    -   `[d`: Go to previous diagnostic.
    -   `]d`: Go to next diagnostic.
-   **Clipboard**:
    -   `<leader>a`: Select all and copy to system clipboard.
    -   `<leader>y`: Copy selection to system clipboard.
    -   `<leader>v`: Paste from system clipboard.
    -   `<leader>V`: Paste *before* from system clipboard.
-   **Discover Keymaps**:
    -   Press `<leader>` to open `which-key`, which will display all available keybindings for the current mode.

### Formatting
Code will automatically be formatted on save for supported file types (`.js`, `.ts`, `.jsx`, `.tsx`, `.css`, `.html`, `.json`, `.yaml`, `.md`) if a formatter (like Prettier) is installed and configured via `conform.nvim` and `mason.nvim`.

## Technologies Used

| Technology         | Description                                                                 |
| :----------------- | :-------------------------------------------------------------------------- |
| **Neovim**         | The highly extensible Vim-based text editor.                                |
| **Lua**            | The lightweight scripting language used for Neovim configuration.           |
| **lazy.nvim**      | A modern, performant plugin manager for Neovim.                             |
| **nvim-lspconfig** | Collections of configurations for Neovim's built-in LSP client.             |
| **mason.nvim**     | Simple to use package manager for LSP servers, DAP servers, linters, and formatters. |
| **nvim-cmp**       | A completion plugin for Neovim written in Lua.                              |
| **nvim-treesitter**| Tree-sitter integration for Neovim, enabling advanced parsing.              |
| **Telescope.nvim** | A highly extendable fuzzy finder for Neovim.                                |
| **nvim-tree.lua**  | A file explorer plugin for Neovim, written in Lua.                          |
| **lualine.nvim**   | A fast and powerful status line for Neovim.                                 |
| **catppuccin/nvim**| A popular, aesthetically pleasing colorscheme.                              |
| **gitsigns.nvim**  | Shows git diff in the sign column.                                          |
| **which-key.nvim** | Displays available keybindings.                                             |
| **conform.nvim**   | A Neovim plugin for formatting code.                                        |
| **alpha-nvim**     | A fast and fully customizable Neovim dashboard.                             |

## Author Info
**Hassan Amiri**
-   [LinkedIn](https://linkedin.com/in/YourLinkedInUsername)
-   [X (Twitter)](https://x.com/YourTwitterHandle)

---

[![Neovim](https://img.shields.io/badge/Editor-Neovim-57AD58?style=flat&logo=neovim&logoColor=white)](https://neovim.io/)
[![Lua](https://img.shields.io/badge/Language-Lua-000080?style=flat&logo=lua&logoColor=white)](https://www.lua.org/)
[![Plugin Manager](https://img.shields.io/badge/Plugin_Manager-Lazy.nvim-007FFF?style=flat&logo=vim&logoColor=white)](https://github.com/folke/lazy.nvim)
[![Readme was generated by Dokugen](https://img.shields.io/badge/Readme%20was%20generated%20by-Dokugen-brightgreen)](https://www.npmjs.com/package/dokugen)
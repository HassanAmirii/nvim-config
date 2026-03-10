-- Bootstrap lazy.nvim --------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Leader keys ---------------------------------------------------------------
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load core modules ---------------------------------------------------------
require("options")      -- vim.opt settings
require("keymaps")      -- key mappings
require("autocmds")     -- autocommands

-- Plugins -------------------------------------------------------------------
require("lazy").setup({
  spec = {
    -- Colorscheme
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    
-- Core plugins
{ "folke/which-key.nvim", event = "VeryLazy" },  -- <-- ADD THIS
{ "folke/flash.nvim", event = "VeryLazy" },
{ "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
{ "lewis6991/gitsigns.nvim" },
{ "goolord/alpha-nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
    -- Telescope
    {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.6",
      dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      },
    },

    -- Discord Presence
    {
      "andweeb/presence.nvim",
      event = "VeryLazy",
      config = function()
        require("presence").setup({
          auto_update = true,
          neovim_image_text = "Neovim",
          main_image = "neovim",
          client_id = "793271441293967371",
        })
      end,
    },

    -- LSP and completion
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/nvim-cmp", dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip" } },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "stevearc/conform.nvim" }, -- formatter
  },
  install = { colorscheme = { "catppuccin" } },
})

-- Load plugin configurations ------------------------------------------------
require("config.lsp")
require("config.treesitter")
require("config.cmp")
require("config.ui")

-- Colorscheme ---------------------------------------------------------------
vim.cmd.colorscheme("catppuccin")
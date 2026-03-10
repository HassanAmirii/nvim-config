-- Basic settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.wrap = false
vim.o.smartindent = true

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true

-- Performance
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.ttimeoutlen = 10
vim.o.redrawtime = 1500

-- Splits
vim.o.splitright = true
vim.o.splitbelow = true

-- Undo/backup
vim.o.undofile = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false

-- Mouse
vim.o.mouse = "a"

-- Clipboard
vim.opt.clipboard:append("unnamedplus")
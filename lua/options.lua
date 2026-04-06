-- Basic settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.wrap = false
vim.o.linebreak = true
vim.o.breakindent = true
vim.o.showbreak = "↪ "
vim.o.smartindent = true
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.opt.fillchars:append({ eob = " " })

-- Cursor style with blinking disabled (smear-cursor handles motion)
vim.opt.guicursor = {
	"n-v-c:block",
	"i-ci-ve:ver25",
	"r-cr:hor20",
	"o:hor50",
	"a:Cursor",
}

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
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
pcall(function()
	vim.o.smoothscroll = true
end)

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
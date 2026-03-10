local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Highlight on yank
augroup("highlight_yank", { clear = true })
autocmd("TextYankPost", {
  group = "highlight_yank",
  callback = function() vim.highlight.on_yank({ timeout = 200 }) end,
})

-- Resize splits on window resize
augroup("resize_splits", { clear = true })
autocmd("VimResized", {
  group = "resize_splits",
  command = "tabdo wincmd =",
})

-- Remember last location
augroup("last_loc", { clear = true })
autocmd("BufReadPost", {
  group = "last_loc",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})
--reflect dir change on the file tree when invoked on the commad interface
autocmd("DirChanged", {
  callback = function()
    local ok, api = pcall(require, "nvim-tree.api")
    if ok then
      api.tree.change_root(vim.fn.getcwd())
    end
  end,
})

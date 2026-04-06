local ok, ts_configs = pcall(require, "nvim-treesitter.configs")
if not ok then
  return
end

ts_configs.setup({
  ensure_installed = { 
    "lua", 
    "python", 
    "javascript", 
    "typescript", 
    "php",
    "html", 
    "css", 
    "json",
    "bash",
    "markdown",
    "markdown_inline",
  },
  sync_install = false,
  auto_install = true,
  highlight = { 
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
})
local ok, telescope = pcall(require, "telescope")
if not ok then
  return
end

telescope.setup({
  defaults = {
    preview = {
      treesitter = false,
    },
  },
})

pcall(telescope.load_extension, "fzf")

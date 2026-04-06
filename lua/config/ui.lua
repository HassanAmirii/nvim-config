-- Lualine
require("nvim-web-devicons").setup({ default = true })

require("lualine").setup({
  options = {
    theme = "auto",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { { "filename", path = 1 } },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})

-- Gitsigns
require("gitsigns").setup()

--nvim tree
require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
  },

  view = {
    width = 30,
  },

  renderer = {
    indent_markers = { enable = true },
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
})

-- Alpha dashboard

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local function get_greeting()
  local hour = tonumber(os.date("%H"))
  if hour < 12 then
    return "Good morning"
  elseif hour < 18 then
    return "Good afternoon"
  else
    return "Good evening"
  end
end


dashboard.section.header.val = {
  [[██╗  ██╗ █████╗ ███████╗███████╗ █████╗ ███╗   ██╗██████╗ ██████╗ ██╗████████╗]],
  [[██║  ██║██╔══██╗██╔════╝██╔════╝██╔══██╗████╗  ██║╚════██╗██╔══██╗██║╚══██╔══╝]],
  [[███████║███████║███████╗███████╗███████║██╔██╗ ██║ █████╔╝██████╔╝██║   ██║   ]],
  [[██╔══██║██╔══██║╚════██║╚════██║██╔══██║██║╚██╗██║██╔═══╝ ██╔══██╗██║   ██║   ]],
  [[██║  ██║██║  ██║███████║███████║██║  ██║██║ ╚████║███████╗██████╔╝██║   ██║   ]],
  [[╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚═════╝ ╚═╝   ╚═╝   ]],
}
dashboard.section.buttons.val = {
  dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
  dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
  dashboard.button("n", "  New File", ":ene <BAR> startinsert<CR>"),
  dashboard.button("s", "  Settings", ":e $MYVIMRC<CR>"),
  dashboard.button("q", "  Quit", ":qa<CR>"),
}

dashboard.section.footer.val = get_greeting()

alpha.setup(dashboard.config)

-- Flash.nvim
require("flash").setup()

-- Conform.nvim (formatter)
require("conform").setup({
  formatters_by_ft = {
    c = { "clang_format" },
    cpp = { "clang_format" },
    lua = { "stylua" },
    python = { "isort", "black" },
    php = { "php_cs_fixer" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    less = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    jsonc = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    sh = { "shfmt" },
    bash = { "shfmt" },
    zsh = { "shfmt" },
  },
  format_on_save = {
    timeout_ms = 1000,
    lsp_fallback = true,
  },
})
-- Which-key (for keymap popups)
require("which-key").setup({
  plugins = { spelling = true },
  triggers = { "<leader>" },
  win = { border = "rounded" },
})

-- Lualine
require("lualine").setup({
  options = {
    theme = "catppuccin",
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
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
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

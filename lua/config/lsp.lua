local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "pyright",
    -- "ts_ls",  -- Optional: let mason-lspconfig handle it
    "intelephense",
    "html",
    "cssls",
    "jsonls",
    "yamlls",
  },
  handlers = {
    function(server_name)
      -- Use the new vim.lsp.config API
      vim.lsp.config[server_name] = {
        capabilities = capabilities,
      }
      -- Enable the LSP client for this server
      vim.lsp.enable(server_name)
    end,
  },
})

require("mason-tool-installer").setup({
  ensure_installed = {
    "prettier",
    "stylua",
    "black",
    "isort",
    "shfmt",
    "clang-format",
    "php-cs-fixer",
  },
  auto_update = false,
  run_on_start = true,
  start_delay = 1000,
})

-- Diagnostic signs
local signs = { ERROR = " ", WARN = " ", INFO = " ", HINT = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  virtual_text = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Manually set up TypeScript using the new API
vim.lsp.config.ts_ls = {
  cmd = { "typescript-language-server", "--stdio" },
  capabilities = capabilities,
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  root_markers = { "package.json", "tsconfig.json", ".git" },
}
vim.lsp.enable("ts_ls")

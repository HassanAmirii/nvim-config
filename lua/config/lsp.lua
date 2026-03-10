require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "pyright",
    -- "ts_ls",  -- Optional: let mason-lspconfig handle it
    "html",
    "cssls",
    "jsonls",
    "yamlls",
  },
  handlers = {
    function(server_name)
      -- Use the new vim.lsp.config API
      vim.lsp.config[server_name] = {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
        on_attach = function(client, bufnr)
          -- Format on save
          if client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              callback = function() vim.lsp.buf.format({ async = false }) end,
            })
          end
        end,
      }
      -- Enable the LSP client for this server
      vim.lsp.enable(server_name)
    end,
  },
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
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function() vim.lsp.buf.format({ async = false }) end,
      })
    end
  end,
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  root_markers = { "package.json", "tsconfig.json", ".git" },
}
vim.lsp.enable("ts_ls")

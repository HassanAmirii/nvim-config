-- Better paste
vim.keymap.set({ "n", "x" }, "<leader>a", 'ggVG"+y', { desc = "Select all and copy" })
vim.keymap.set({ "n", "x" }, "<leader>y", '"+y', { desc = "Copy to clipboard" }) -- 'y' for yank
vim.keymap.set({ "n", "x" }, "<leader>v", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set({ "n", "x" }, "<leader>V", '"+P', { desc = "Paste before from clipboard" })

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Recent files" })
vim.keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "Keymaps" })

-- Nvim-tree - simple toggle
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- LSP mappings
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "<leader>sd", vim.diagnostic.open_float, { desc = "Show diagnostics" }) -- Changed from <leader>e
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

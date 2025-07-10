-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Ensure gd is properly mapped for LSP
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  end,
})

vim.keymap.set("n", "<leader>lc", ":Leet<cr>", { desc = "Open LeetCode Panel" })
vim.keymap.set("n", "<leader>lr", ":Leet run<cr>", { desc = "Run LeetCode Solution" })
vim.keymap.set("n", "<leader>ls", ":Leet submit<cr>", { desc = "Submit LeetCode Solution" })

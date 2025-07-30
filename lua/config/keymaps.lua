-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- =============================================================================
-- LSP (Language Server Protocol) Keymaps
-- =============================================================================
-- These keymaps provide VSCode-like functionality for code navigation and editing
-- They are automatically loaded when a language server attaches to a buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    
    -- ========================================================================
    -- CODE NAVIGATION (VSCode-like functionality)
    -- ========================================================================
    
    -- 🎯 Go to Definition - Jump to where a function/variable is defined
    -- Usage: Place cursor on function name and press the key
    vim.keymap.set('n', '<C-LeftMouse>', vim.lsp.buf.definition, opts)  -- Ctrl+Click (VSCode style)
    vim.keymap.set('n', '<C-g>', vim.lsp.buf.definition, opts)         -- Ctrl+g (alternative)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)            -- Traditional gd
    
    -- 🔍 Find References - Find all places where a function/variable is used
    -- Usage: Place cursor on function name and press 'gr'
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    
    -- 📖 Hover Documentation - Show function definition and docs in popup
    -- Usage: Place cursor on function and press 'K' (capital K)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    
    -- ========================================================================
    -- CODE EDITING & REFACTORING
    -- ========================================================================
    
    -- ⚡ Code Actions - Quick fixes, refactoring, and code suggestions
    -- Usage: Press <leader>ca to see available actions
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    
    -- ✏️ Rename Symbol - Rename function/variable and update all references
    -- Usage: Place cursor on symbol and press <leader>rn
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    
    -- 📝 Format Document - Auto-format code according to language rules
    -- Usage: Press <leader>f to format the entire file
    vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, opts)
    
    -- ========================================================================
    -- ADVANCED LSP FEATURES
    -- ========================================================================
    
    -- 🏷️ Go to Type Definition - Jump to type definition (useful for TypeScript)
    -- Usage: Place cursor on variable and press <leader>D
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
    
    -- 📋 Document Symbols - Browse functions/classes in current file
    -- Usage: Press <leader>ds to see outline of current file
    vim.keymap.set('n', '<leader>ds', vim.lsp.buf.document_symbol, opts)
    
    -- 🔎 Workspace Symbols - Search for functions/classes across entire project
    -- Usage: Press <leader>ws to search across all files
    vim.keymap.set('n', '<leader>ws', vim.lsp.buf.workspace_symbol, opts)
    
    -- ========================================================================
    -- WORKSPACE MANAGEMENT
    -- ========================================================================
    
    -- 📁 Add Workspace Folder - Add folder to LSP workspace
    -- Usage: Press <leader>wa to add current folder
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    
    -- 🗑️ Remove Workspace Folder - Remove folder from LSP workspace
    -- Usage: Press <leader>wr to remove current folder
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    
    -- 📋 List Workspace Folders - Show all folders in LSP workspace
    -- Usage: Press <leader>wl to see all workspace folders
    vim.keymap.set('n', '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
  end,
})

-- =============================================================================
-- LEETCODE PLUGIN KEYMAPS
-- =============================================================================
-- These keymaps provide quick access to LeetCode functionality

-- 🧮 Open LeetCode Panel - Access LeetCode problems and solutions
vim.keymap.set("n", "<leader>lc", ":Leet<cr>", { desc = "Open LeetCode Panel" })

-- ▶️ Run LeetCode Solution - Test your solution against sample cases
vim.keymap.set("n", "<leader>lr", ":Leet run<cr>", { desc = "Run LeetCode Solution" })

-- 📤 Submit LeetCode Solution - Submit your solution for evaluation
vim.keymap.set("n", "<leader>ls", ":Leet submit<cr>", { desc = "Submit LeetCode Solution" })

-- =============================================================================
-- QUICK REFERENCE GUIDE
-- =============================================================================
-- 
-- 🎯 GO TO DEFINITION:
--   - Ctrl+Click (VSCode style) - Most intuitive
--   - Ctrl+g (keyboard alternative)
--   - gd (traditional Vim style)
--
-- 🔍 FIND USAGES:
--   - gr (find all references)
--
-- 📖 GET HELP:
--   - K (hover documentation)
--
-- ⚡ QUICK ACTIONS:
--   - <leader>ca (code actions/quick fixes)
--   - <leader>rn (rename symbol)
--   - <leader>f (format document)
--
-- 📋 BROWSING:
--   - <leader>ds (document symbols/outline)
--   - <leader>ws (workspace symbols/search)
--
-- 🧮 LEETCODE:
--   - <leader>lc (open panel)
--   - <leader>lr (run solution)
--   - <leader>ls (submit solution)
--
-- Note: <leader> is typically the space bar
-- All LSP keymaps require a language server to be installed and active

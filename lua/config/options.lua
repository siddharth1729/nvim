-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Enable window transparency
vim.opt.winblend = 5
vim.opt.pumblend = 20

-- Enable terminal transparency
vim.opt.termguicolors = true

-- Set background to transparent
vim.opt.background = "dark"

-- Make all highlight groups transparent
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
  highlight LineNr guibg=NONE ctermbg=NONE
  highlight Folded guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
  highlight CursorLine guibg=NONE ctermbg=NONE
  highlight CursorLineNr guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=NONE ctermbg=NONE
  highlight StatusLine guibg=NONE ctermbg=NONE
  highlight StatusLineNC guibg=NONE ctermbg=NONE
  highlight TabLine guibg=NONE ctermbg=NONE
  highlight TabLineFill guibg=NONE ctermbg=NONE
  highlight TabLineSel guibg=NONE ctermbg=NONE
  highlight WinBar guibg=NONE ctermbg=NONE
  highlight WinBarNC guibg=NONE ctermbg=NONE
]])

-- Cursor configuration for better visibility
vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,o:hor50-Cursor/lCursor"
vim.opt.cursorline = true
vim.opt.cursorcolumn = false

-- Make cursor more visible
vim.cmd([[
  highlight Cursor guifg=white guibg=#ff0000
  highlight CursorLine gui=underline
  highlight CursorLineNr guifg=#ff0000 gui=bold
]])

-- Add some additional transparency settings
vim.cmd([[
  set fillchars=vert:│,fold:-,diff:╱
]]) 
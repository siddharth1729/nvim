return {
  "xiyaowong/transparent.nvim",
  event = "VeryLazy", -- Lazy load for better performance
  config = function()
    require("transparent").setup({
      groups = { -- table: default groups
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
        'EndOfBuffer',
      },
      extra_groups = {
        "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
        "NvimTreeNormal", -- NvimTree
        "TelescopeNormal", -- Telescope
        "TelescopeBorder", -- Telescope
        "TelescopePromptNormal", -- Telescope
        "TelescopePromptBorder", -- Telescope
        "TelescopeResultsNormal", -- Telescope
        "TelescopeResultsBorder", -- Telescope
        "TelescopePreviewNormal", -- Telescope
        "TelescopePreviewBorder", -- Telescope
        -- Neo-tree specific groups
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NeoTreeEndOfBuffer",
        -- "NeoTreeCursorLine",
        -- "NeoTreeDirectoryIcon",
        "NeoTreeDirectoryName",
        "NeoTreeFileIcon",
        "NeoTreeFileName",
        "NeoTreeFileNameOpened",
        "NeoTreeFloatBorder",
        "NeoTreeFloatTitle",
        "NeoTreeGitAdded",
        "NeoTreeGitConflict",
        "NeoTreeGitDeleted",
        "NeoTreeGitIgnored",
        "NeoTreeGitModified",
        "NeoTreeGitUntracked",
        "NeoTreeIndentMarker",
        "NeoTreeRootName",
        "NeoTreeSymbolicLinkTarget",
        -- "NeoTreeTitleBar",
        "NeoTreeVertSplit",
        "NeoTreeWinSeparator",
      },
      exclude_groups = {}, -- table: groups you don't want to clear
    })

    -- Enable transparency by default
    vim.cmd("TransparentEnable")
  end,
} 
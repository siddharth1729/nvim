-- =============================================================================
-- treesitter-context — VS Code–style sticky scroll
-- =============================================================================
-- Shows the enclosing function / class / block at the top of the window so you
-- always know where you are in large Spring / Go / C++ codebases.
-- Capped at 3 lines to stay minimal.
-- =============================================================================

return {
  "nvim-treesitter/nvim-treesitter-context",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    enable = true,
    max_lines = 3,
    min_window_height = 20,
    line_numbers = true,
    multiline_threshold = 1,
    trim_scope = "outer",
    mode = "cursor",
    separator = "─",
    zindex = 20,
  },
  keys = {
    {
      "<leader>uC",
      function()
        require("treesitter-context").toggle()
      end,
      desc = "Toggle Treesitter Context (Sticky Scroll)",
    },
  },
}

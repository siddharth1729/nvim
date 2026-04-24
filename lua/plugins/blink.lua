-- =============================================================================
-- blink.cmp — VS Code–flavored completion (Rust-powered, zero-lag)
-- =============================================================================
-- LazyVim already includes blink.cmp; this file *extends* its defaults.
-- Rationale:
--   * ghost_text → inline preview of the top suggestion (VS Code parity)
--   * preselect  → first item auto-highlighted so <Tab>/<CR> accepts instantly
--   * super-tab  → <Tab> accepts / cycles; <S-Tab> reverses; snippet-jump-aware
-- =============================================================================

return {
  "saghen/blink.cmp",
  event = { "InsertEnter", "CmdlineEnter" },
  opts = {
    keymap = { preset = "super-tab" },

    completion = {
      ghost_text = { enabled = true },

      list = {
        selection = {
          preselect = true,
          auto_insert = false,
        },
      },

      menu = {
        border = "rounded",
        draw = {
          treesitter = { "lsp" },
          columns = {
            { "label", "label_description", gap = 1 },
            { "kind_icon", "kind", gap = 1 },
          },
        },
      },

      documentation = {
        auto_show = true,
        auto_show_delay_ms = 150,
        window = { border = "rounded" },
      },

      accept = {
        auto_brackets = { enabled = true },
      },
    },

    signature = {
      enabled = true,
      window = { border = "rounded" },
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    fuzzy = {
      implementation = "prefer_rust_with_warning",
    },
  },
}

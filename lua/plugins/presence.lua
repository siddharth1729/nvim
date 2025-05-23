return {
  "andweeb/presence.nvim",
  event = "VeryLazy",
  opts = {
    -- General options
    auto_update = true,
    neovim_image_text = "The One True Text Editor",
    main_image = "neovim",
    client_id = "793271441293967371",
    log_level = "debug",
    debounce_timeout = 2,
    enable_line_number = false,
    blacklist = {},
    buttons = true,
    show_time = true,

    -- Rich Presence text options
    editing_text = "Coding: %s",
    file_explorer_text = "Browsing: %s",
    git_commit_text = "Committing: changes",
    plugin_manager_text = "Managing: plugins",
    reading_text = "Reading: %s",
    workspace_text = "Working on: %s",
    line_number_text = "Line: %s out of: %s",
  },
  config = function(_, opts)
    require("presence").setup(opts)
  end,
}

return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  event = "VeryLazy",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    -- You can customize options here, see https://github.com/kawre/leetcode.nvim#%EF%B8%8F-configuration
    -- Default config is usually sufficient for most users
    lang = "java",
  },
} 
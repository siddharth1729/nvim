-- nvim-metals configuration override
-- This prevents the Coursier warning when not using Scala projects
-- 
-- IMPORTANT: Since Scala extra is not enabled in lazyvim.json, we disable nvim-metals
-- to prevent the Coursier warning. If you want to use Scala:
-- 1. Add "lazyvim.plugins.extras.lang.scala" to lazyvim.json
-- 2. Change enabled = false to enabled = true below
-- 3. Install Coursier by running :MetalsInstall in Neovim
return {
  "scalameta/nvim-metals",
  enabled = false, -- Disabled because Scala extra is not in lazyvim.json
  -- Override LazyVim's default configuration
  init = function()
    -- Suppress initialization on startup
    -- Metals will only initialize when opening Scala files
  end,
  ft = { "scala", "sbt", "sc" },
  opts = function()
    local metals_config = require("metals").bare_config()

    -- Configure Metals settings
    metals_config.settings = {
      showImplicitArguments = true,
      showInferredType = true,
      excludedPackages = {
        "akka.actor.typed.javadsl",
        "com.github.swagger.akka.javadsl",
      },
      serverVersion = "latest.snapshot",
    }

    -- Initialize Metals when entering a Scala file
    metals_config.on_attach = function(client, bufnr)
      require("metals").setup_dap()

      -- LSP keymaps
      local opts = { buffer = bufnr }
      vim.keymap.set("n", "<leader>ws", require("telescope.builtin").lsp_workspace_symbols, opts)
    end

    -- Don't initialize automatically - only when opening Scala files
    return metals_config
  end,
  config = function(_, opts)
    -- Only initialize Metals when actually opening a Scala file
    -- This prevents the Coursier warning on startup
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "scala", "sbt", "sc" },
      callback = function()
        local metals = require("metals")
        -- Check if we're in a Scala project before initializing
        local function is_scala_project()
          local root_dir = vim.fn.getcwd()
          local build_files = { "build.sbt", "build.sc", "project/build.properties", "pom.xml" }
          for _, file in ipairs(build_files) do
            if vim.fn.filereadable(root_dir .. "/" .. file) == 1 then
              return true
            end
          end
          return false
        end

        -- Only initialize if in a Scala project or if explicitly opening a Scala file
        if is_scala_project() or vim.bo.filetype == "scala" or vim.bo.filetype == "sbt" then
          if not metals.config then
            metals.initialize_or_attach(opts)
          end
        end
      end,
    })
  end,
}

![preview](./newimg.png)

# A Simple Neovim Configuration

A modern, feature-rich Neovim setup powered by LazyVim, with enhanced Java development support and beautiful transparency effects.

## 👨‍💻 Author

**Siddharth Sabron**  
Senior Software Engineer  
[siddharthsabron.in](https://siddharthsabron.in)


## 🚀 Features

- **Modern Development Experience**
  - Fast startup with lazy-loaded plugins
  - Beautiful transparent UI with blur effects
  - Smart package management with Mason
  - First-class Java development support with JDTLS
  - Enhanced file navigation with Neo-tree
  - Powerful fuzzy finding with Telescope

- **Language Support**
  - Java (with JDTLS)
  - TypeScript/JavaScript
  - Python
  - Lua
  - Markdown
  - SQL
  - And many more through LSP

- **UI Enhancements**
  - Transparent windows and panels
  - Beautiful status line with Lualine
  - Modern icons and visual indicators
  - Smooth scrolling and animations
  - Customizable color schemes

## 📁 Configuration Structure

```
.
├── init.lua                 # Entry point, loads config.lazy
├── lua/
│   ├── config/             # Core configuration
│   │   ├── autocmds.lua    # Auto commands
│   │   ├── keymaps.lua     # Custom key mappings
│   │   ├── lazy.lua        # Lazy.nvim configuration
│   │   └── options.lua     # Neovim options
│   └── plugins/            # Plugin configurations
│       ├── lsp.lua         # LSP and language server setup
│       ├── presence.lua    # Discord presence integration
│       └── transparent.lua # Transparency configuration
├── .gitignore              # Git ignore rules
├── lazy-lock.json          # Plugin version locks
└── stylua.toml             # Lua formatter configuration
```

## 🛠️ Configuration Files

### Core Configuration
- `init.lua`: Bootstraps LazyVim and plugins
- `config/autocmds.lua`: Custom auto commands
- `config/keymaps.lua`: Custom key mappings
- `config/lazy.lua`: Plugin manager configuration
- `config/options.lua`: Neovim core options

### Plugin Configurations
- `plugins/lsp.lua`: Language server setup
  - Mason for LSP installation
  - JDTLS for Java development
  - Auto-completion and diagnostics
- `plugins/presence.lua`: Discord integration
  - Shows current file and activity
  - Customizable status messages
- `plugins/transparent.lua`: UI transparency
  - Transparent windows and panels
  - Customizable blur effects
  - Plugin-specific transparency rules

## 🚀 Getting Started

### Prerequisites
- Neovim >= 0.9.0
- Git
- Java JDK >= 17 (for Java development)
- A Nerd Font (for icons)
- Terminal with transparency support

### Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/nvim-config ~/.config/nvim
   ```
2. Start Neovim and wait for plugins to install
3. Enjoy your new development environment!

## ⚙️ Customization

### Colorscheme
To change the colorscheme, edit `lua/plugins/colorscheme.lua`:
```lua
return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  }
}
```

### Transparency
Control transparency with these commands:
- `:TransparentEnable` - Enable transparency
- `:TransparentDisable` - Disable transparency
- `:TransparentToggle` - Toggle transparency

## 📝 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.


<!-- FOR COLOR SCHME MAKE 
    lua/plugins/colorscheme.lua
return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  }
}
 -->

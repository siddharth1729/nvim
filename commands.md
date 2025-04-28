# Neovim Commands Reference

## File Navigation
- `<leader>ff` - Find files in current directory
- `<leader>fg` - Live grep (search across all files)
- `<leader>fb` - List open buffers
- `<leader>fr` - Recent files
- `<leader>fs` - Search within current file

## LSP (Language Server Protocol) Commands
- `gd` - Go to Definition (jump to where a function/variable is defined)
- `gr` - Go to References (find all places where a function/variable is used)
- `K` - Hover (show function definition/documentation in a popup, similar to VSCode)
- `<leader>ca` - Code Actions (quick fixes and refactoring)
- `<leader>rn` - Rename (rename a symbol and update all references)

## Help and Documentation
- `<leader>fh` - Search help tags
- `<leader>fc` - List available commands

## Mason (Language Server Manager)
- `<leader>cm` - Open Mason to install/manage language servers

## Telescope Navigation
- `Ctrl+n` or `Ctrl+j` - Move to next item
- `Ctrl+p` or `Ctrl+k` - Move to previous item

## Tips
- `<leader>` is typically the space bar
- Most commands work in normal mode
- LSP commands require a language server to be installed via Mason
- To see function documentation: Place cursor on function and press `K` (capital K)
- Hover documentation will show:
  - Function signature
  - Parameters
  - Return type
  - Documentation comments

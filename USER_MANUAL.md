# Neovim Daily Driver — User Manual

> **Stack:** LazyVim + lazy.nvim + blink.cmp (Rust) + Telescope + Neo-tree + Treesitter + DAP
> **Leader key:** `<Space>`
> **Domain:** ⚡ Tech — Backend Supremacy (Java / Spring Boot, Go, Node, C++)

This manual documents **every active keymap** in the current configuration,
grouped by purpose. Defaults that ship with LazyVim are included so the manual
is a complete reference — not just a list of custom overrides.

Legend: `<C-x>` = `Ctrl+x` · `<S-x>` = `Shift+x` · `<leader>` = `Space`

---

## Table of Contents

1. [Navigation & Files](#1-navigation--files)
2. [Editor & Window Management](#2-editor--window-management)
3. [Search & Fuzzy Finding (Telescope)](#3-search--fuzzy-finding-telescope)
4. [LSP & Code Intelligence](#4-lsp--code-intelligence)
5. [Completion (blink.cmp)](#5-completion-blinkcmp)
6. [Debugging (DAP)](#6-debugging-dap)
7. [Git Operations](#7-git-operations)
8. [Testing (neotest)](#8-testing-neotest)
9. [Diagnostics & Trouble](#9-diagnostics--trouble)
10. [UI Toggles](#10-ui-toggles)
11. [Personal / Custom Mappings](#11-personal--custom-mappings)

---

## 1. Navigation & Files

### File Explorer — Neo-tree

| Keymap | Action |
|--------|--------|
| `<leader>e` | Toggle Neo-tree at project root |
| `<leader>E` | Toggle Neo-tree at current file directory |
| `<leader>fe` | Focus Neo-tree Explorer |
| `<leader>be` | Toggle Neo-tree Buffers view |
| `<leader>ge` | Toggle Neo-tree Git Status view |

**Inside Neo-tree** (when focused):

| Keymap | Action |
|--------|--------|
| `<CR>` / `o` | Open file |
| `<C-v>` | Open in vertical split |
| `<C-s>` | Open in horizontal split |
| `<C-t>` | Open in new tab |
| `a` | Add new file |
| `A` | Add new directory |
| `d` | Delete |
| `r` | Rename |
| `c` / `m` | Copy / Move |
| `y` / `x` / `p` | Yank / Cut / Paste |
| `H` | Toggle hidden files |
| `R` | Refresh |
| `?` | Show all mappings |

### Buffers

| Keymap | Action |
|--------|--------|
| `<S-h>` | Previous buffer |
| `<S-l>` | Next buffer |
| `[b` | Previous buffer |
| `]b` | Next buffer |
| `<leader>bb` / `<leader>`` | Switch to last buffer |
| `<leader>bd` | Delete current buffer |
| `<leader>bD` | Delete current buffer (force) |
| `<leader>bo` | Delete other buffers |
| `<leader>bp` | Toggle pin buffer |
| `<leader>bP` | Delete non-pinned buffers |

### Jumping

| Keymap | Action |
|--------|--------|
| `<C-o>` | Jump back (older location) |
| `<C-i>` | Jump forward (newer location) |
| `gg` / `G` | Top / Bottom of file |
| `%` | Jump to matching bracket/tag |
| `<C-d>` / `<C-u>` | Half page down / up (centered) |
| `n` / `N` | Next / Previous search match (centered) |
| `s` | **Flash jump** — type 2 chars + label to teleport |
| `S` | Flash Treesitter (jump to syntax node) |

---

## 2. Editor & Window Management

### Windows (Splits)

| Keymap | Action |
|--------|--------|
| `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>` | Move between windows |
| `<C-Left>` / `<C-Right>` | Resize width |
| `<C-Up>` / `<C-Down>` | Resize height |
| `<leader>w-` | Split window horizontally |
| `<leader>w\|` | Split window vertically |
| `<leader>wd` | Delete window |
| `<leader>ww` | Switch between windows |

### Tabs

| Keymap | Action |
|--------|--------|
| `<leader><tab><tab>` | New tab |
| `<leader><tab>d` | Close tab |
| `<leader><tab>]` | Next tab |
| `<leader><tab>[` | Previous tab |
| `<leader><tab>f` | First tab |
| `<leader><tab>l` | Last tab |

### Editing

| Keymap | Action |
|--------|--------|
| `<Esc>` | Clear search highlight + dismiss |
| `<leader>ur` | Redraw / clear UI |
| `J` (visual) | Move line down (with re-indent) |
| `K` (visual) | Move line up (with re-indent) |
| `<A-j>` | Move line down (normal/insert) |
| `<A-k>` | Move line up (normal/insert) |
| `gcc` | Toggle line comment |
| `gc` (visual) | Toggle comment on selection |
| `gco` / `gcO` | Add comment below / above |
| `<` / `>` (visual) | Indent / dedent (keep selection) |

### Save / Quit

| Keymap | Action |
|--------|--------|
| `<C-s>` | Save file |
| `<leader>qq` | Quit all |
| `<leader>qs` | Restore session |
| `<leader>ql` | Restore last session |
| `<leader>qd` | Don't save current session |

---

## 3. Search & Fuzzy Finding (Telescope)

### Core Pickers (custom from `plugins/telescope.lua`)

| Keymap | Action |
|--------|--------|
| `<leader>ff` | Find files in cwd |
| `<leader>fg` | Live grep across files |
| `<leader>fb` | List open buffers |
| `<leader>fh` | Search help tags |
| `<leader>fr` | Recent files |
| `<leader>fc` | Resume last picker |
| `<leader>fs` | Document symbols (LSP) |

### LazyVim Picker Extras

| Keymap | Action |
|--------|--------|
| `<leader><space>` | Find files (smart) |
| `<leader>/` | Grep (root dir) |
| `<leader>:` | Command history |
| `<leader>fp` | Find projects |
| `<leader>fR` | Recent (cwd) |
| `<leader>fF` | Find files (cwd) |
| `<leader>fG` | Grep (cwd) |
| `<leader>sh` | Help pages |
| `<leader>sk` | Key maps |
| `<leader>sm` | Marks |
| `<leader>sc` | Command history |
| `<leader>sC` | Commands |
| `<leader>sd` | Document diagnostics |
| `<leader>sD` | Workspace diagnostics |
| `<leader>sg` | Grep (root dir) |
| `<leader>sG` | Grep (cwd) |
| `<leader>sw` | Word under cursor (root) |
| `<leader>sW` | Word under cursor (cwd) |
| `<leader>sR` | Resume |
| `<leader>ss` | LSP symbols (document) |
| `<leader>sS` | LSP symbols (workspace) |

### Inside Telescope Prompt

| Keymap | Action |
|--------|--------|
| `<C-n>` / `<C-p>` | Next / Previous result |
| `<C-j>` / `<C-k>` | Next / Previous result |
| `<CR>` | Open selected |
| `<C-x>` | Open in horizontal split |
| `<C-v>` | Open in vertical split |
| `<C-t>` | Open in new tab |
| `<C-u>` / `<C-d>` | Scroll preview up / down |
| `<Esc>` | Close picker |

---

## 4. LSP & Code Intelligence

> **Single source of truth:** `lua/config/keymaps.lua` (`UserLspConfig` augroup).
> Auto-registered when any LSP server attaches to a buffer.

### Go to Definition

| Keymap | Action |
|--------|--------|
| `gd` | Go to definition |
| `<C-g>` | Go to definition (alternative) |
| `<C-LeftMouse>` | Go to definition (VS Code–style Ctrl+Click) |
| `gD` | Go to declaration (LazyVim) |
| `gI` | Go to implementation (LazyVim) |
| `gy` | Go to type definition (LazyVim) |
| `<leader>D` | Go to type definition (custom) |

### References & Symbols

| Keymap | Action |
|--------|--------|
| `gr` | Find all references |
| `K` | Hover documentation |
| `<leader>ds` | Document symbols (LSP buffer outline) |
| `<leader>ws` | Workspace symbols (project-wide) |
| `<leader>ss` | LSP document symbols (Telescope) |
| `<leader>sS` | LSP workspace symbols (Telescope) |

### Refactoring

| Keymap | Action |
|--------|--------|
| `<leader>ca` | Code action (quick fix / refactor menu) |
| `<leader>rn` | Rename symbol (custom) |
| `<leader>cr` | Rename with inc-rename (LazyVim live preview) |
| `<leader>cR` | Rename file + references |
| `<leader>f` | Format document (custom) |
| `<leader>cf` | Format document (LazyVim via conform) |

### Workspace Folders

| Keymap | Action |
|--------|--------|
| `<leader>wa` | Add folder to LSP workspace |
| `<leader>wr` | Remove folder from LSP workspace |
| `<leader>wl` | List workspace folders |

### LSP Control

| Keymap | Action |
|--------|--------|
| `<leader>cl` | Show Lsp Info |
| `<leader>cm` | Open Mason UI |

### Java (jdtls) — extra when editing `.java`

| Keymap | Action |
|--------|--------|
| `<leader>cxo` | Organize Imports |
| `<leader>cxv` | Extract Variable |
| `<leader>cxc` | Extract Constant |
| `<leader>cxm` | Extract Method |

---

## 5. Completion (blink.cmp)

> Ghost text enabled · pre-selected first item · super-tab preset.

| Keymap | Action |
|--------|--------|
| `<Tab>` | Accept selected item / jump to next snippet placeholder |
| `<S-Tab>` | Previous snippet placeholder |
| `<CR>` | Accept selected item |
| `<C-Space>` | Trigger completion manually / toggle docs |
| `<C-n>` | Next item |
| `<C-p>` | Previous item |
| `<C-e>` | Dismiss / cancel completion |
| `<C-y>` | Confirm selection |
| `<C-f>` / `<C-b>` | Scroll docs down / up |
| `<C-k>` | Toggle signature help |

---

## 6. Debugging (DAP)

> Enabled via `lazyvim.plugins.extras.dap.core` + language integrations.
> Java: via `nvim-jdtls` · Go: via `nvim-dap-go` (from `lang.go` extra).

### Breakpoints

| Keymap | Action |
|--------|--------|
| `<leader>db` | Toggle breakpoint |
| `<leader>dB` | Conditional breakpoint (expression prompt) |

### Execution Control

| Keymap | Action |
|--------|--------|
| `<leader>dc` | Continue (start / resume) |
| `<leader>dC` | Run to cursor |
| `<leader>dg` | Go to line (without executing) |
| `<leader>di` | Step into |
| `<leader>dO` | Step over |
| `<leader>do` | Step out |
| `<leader>dj` | Down (stack) |
| `<leader>dk` | Up (stack) |
| `<leader>dl` | Run last configuration |
| `<leader>dp` | Pause |
| `<leader>dt` | Terminate session |

### Inspection

| Keymap | Action |
|--------|--------|
| `<leader>dr` | Toggle REPL |
| `<leader>ds` | Session info |
| `<leader>du` | Toggle DAP UI |
| `<leader>de` | Eval expression (visual: eval selection) |
| `<leader>dw` | DAP widgets |

### Language-specific

| Keymap | Scope | Action |
|--------|-------|--------|
| `<leader>dgt` | Go | Debug nearest test |
| `<leader>dgl` | Go | Debug last test |

---

## 7. Git Operations

### Top-level (LazyVim + snacks.nvim)

| Keymap | Action |
|--------|--------|
| `<leader>gg` | Open **Lazygit** (root dir) |
| `<leader>gG` | Open Lazygit (cwd) |
| `<leader>gf` | Lazygit — current file history |
| `<leader>gl` | Lazygit — log (root) |
| `<leader>gL` | Lazygit — log (cwd) |
| `<leader>gb` | Git blame line |
| `<leader>gB` | Git browse (open in remote) |
| `<leader>gY` | Git browse (yank URL) |

### Gitsigns — Hunks

| Keymap | Action |
|--------|--------|
| `]h` | Next hunk |
| `[h` | Previous hunk |
| `]H` | Last hunk |
| `[H` | First hunk |
| `<leader>ghs` | Stage hunk |
| `<leader>ghr` | Reset hunk |
| `<leader>ghS` | Stage buffer |
| `<leader>ghR` | Reset buffer |
| `<leader>ghp` | Preview hunk inline |
| `<leader>ghb` | Blame line (full) |
| `<leader>ghd` | Diff against index |
| `<leader>ghD` | Diff against last commit |
| `<leader>ghu` | Undo stage hunk |
| `ih` (text object) | Select hunk (operator-pending / visual) |

---

## 8. Testing (neotest)

| Keymap | Action |
|--------|--------|
| `<leader>tt` | Run file |
| `<leader>tT` | Run all test files |
| `<leader>tr` | Run nearest test |
| `<leader>tl` | Run last test |
| `<leader>ts` | Toggle summary view |
| `<leader>to` | Show output |
| `<leader>tO` | Toggle output panel |
| `<leader>tS` | Stop |
| `<leader>tw` | Toggle watch |

---

## 9. Diagnostics & Trouble

| Keymap | Action |
|--------|--------|
| `]d` | Next diagnostic |
| `[d` | Previous diagnostic |
| `]e` | Next error |
| `[e` | Previous error |
| `]w` | Next warning |
| `[w` | Previous warning |
| `<leader>cd` | Line diagnostics (float) |
| `<leader>xx` | Trouble — diagnostics (document) |
| `<leader>xX` | Trouble — diagnostics (workspace) |
| `<leader>xs` | Trouble — symbols |
| `<leader>xl` | Trouble — location list |
| `<leader>xq` | Trouble — quickfix list |
| `<leader>xL` | Trouble — LSP references/definitions/implementations |
| `<leader>xt` | Trouble — TODO comments |

---

## 10. UI Toggles

| Keymap | Action |
|--------|--------|
| `<leader>uf` | Toggle autoformat (global) |
| `<leader>uF` | Toggle autoformat (buffer) |
| `<leader>us` | Toggle spellcheck |
| `<leader>uw` | Toggle word wrap |
| `<leader>uL` | Toggle relative line numbers |
| `<leader>ul` | Toggle line numbers |
| `<leader>ud` | Toggle diagnostics |
| `<leader>uc` | Toggle conceal |
| `<leader>uT` | Toggle treesitter highlight |
| `<leader>ub` | Toggle background light/dark |
| `<leader>uh` | Toggle inlay hints |
| `<leader>un` | Dismiss all notifications |
| `<leader>uC` | **Toggle Treesitter Context (Sticky Scroll)** — custom |

---

## 11. Personal / Custom Mappings

Everything below is defined in **`lua/config/keymaps.lua`** and the files under
`lua/plugins/`. These are yours — do not overwrite.

### LeetCode (`plugins/leetcode.lua`)

| Keymap | Action |
|--------|--------|
| `<leader>lc` | Open LeetCode panel |
| `<leader>lr` | Run current LeetCode solution |
| `<leader>ls` | Submit current LeetCode solution |

### LSP — Custom Definition Shortcuts

| Keymap | Action |
|--------|--------|
| `<C-LeftMouse>` | Go to definition (VS Code–style Ctrl+Click) |
| `<C-g>` | Go to definition (keyboard alternative) |
| `gd` | Go to definition (traditional Vim) |

### LSP — Custom Workspace Tools

| Keymap | Action |
|--------|--------|
| `<leader>D` | Type definition |
| `<leader>ds` | Document symbols |
| `<leader>ws` | Workspace symbols |
| `<leader>wa` | Add workspace folder |
| `<leader>wr` | Remove workspace folder |
| `<leader>wl` | List workspace folders |

---

## Architectural Notes

### Single source of truth for LSP keymaps
All LSP mappings live in **`lua/config/keymaps.lua`** inside one `LspAttach`
autocmd using the `UserLspConfig` augroup with `{ clear = true }`. Do **not**
re-register this augroup inside any plugin spec — it will clobber the maps.

### JDTLS is tuned for enterprise heaps
`-Xmx4g` with G1GC + string deduplication. Spring Boot projects with 10k+
classes will no longer stall.

### Plugin load strategy
- `blink.cmp` → lazy-loaded on `InsertEnter` / `CmdlineEnter` (Rust fuzzy).
- `treesitter-context` → lazy-loaded on `BufReadPost` / `BufNewFile`.
- All custom plugin specs are lazy by default (set in `lua/config/lazy.lua`).

### Health commands

| Command | Purpose |
|---------|---------|
| `:checkhealth` | Full Neovim diagnostics |
| `:checkhealth lazy` | Plugin manager state |
| `:Lazy` | Plugin UI (install / update / profile) |
| `:Lazy profile` | Startup time breakdown per plugin |
| `:Mason` | Install / manage LSP servers, formatters, DAPs |
| `:LspInfo` | Active LSP clients for current buffer |
| `:ConformInfo` | Active formatters |
| `:DapUiToggle` | Open / close debugger UI |

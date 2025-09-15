# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

### LSP and Mason Management
- Install LSP servers: `:MasonInstall <server-name>` (e.g., `ts_ls`, `eslint`, `lua_ls`, `pyright`)
- Check Mason status: `:Mason`
- View installed LSP servers: `:LspInfo`

### Formatting
- Format current buffer: `<leader>f` (uses conform.nvim with prettier/stylua/black)
- Check formatter info: `:ConformInfo`

### Plugin Management
- Update plugins: `:Lazy update`
- Install new plugins: Add to `lua/jadam/lazy.lua` then restart Neovim
- Check plugin status: `:Lazy`

## Architecture

This is a Neovim configuration using Lua with the following structure:

- **init.lua**: Entry point that loads the main modules
- **lua/jadam/**: Core configuration module
  - `lazy.lua`: Plugin declarations using lazy.nvim package manager
  - `remap.lua`: Custom keymappings
  - `set.lua`: Neovim settings and options
- **after/plugin/**: Plugin-specific configurations loaded after plugins
  - Each plugin has its own configuration file (e.g., `lsp.lua`, `telescope.lua`)

### Key Components

**Plugin Management**: Uses lazy.nvim for plugin management with automatic bootstrapping. Plugins are declared in `lua/jadam/lazy.lua`.

**LSP Setup**: Uses lsp-zero with Mason for automatic LSP server installation. Configured servers include TypeScript, ESLint, Lua, Python, and MDX.

**Formatting**: Handled by conform.nvim with format-on-save enabled. Prettier for web technologies, stylua for Lua, black/isort for Python.

**File Navigation**: Telescope for fuzzy finding, Harpoon for quick file switching, nvim-tree as file explorer.

**AI Integration**: Avante.nvim configured with Claude Sonnet for AI assistance within Neovim.

## Key Bindings

- Leader key: `<Space>`
- Format buffer: `<leader>f`
- LSP hover: `K`
- LSP references: `gr`
- LSP definition: `gd`
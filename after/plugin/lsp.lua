require("mason").setup()
require("mason-lspconfig").setup()
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({ buffer = bufnr })

  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>',
    { noremap = true, silent = true })
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = bufnr })
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })

  -- Configure hover window to show more content
  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
      max_width = 120,
      max_height = 30,
      border = "rounded"
    }
  )
end)

lsp.ensure_installed({
  'ts_ls',
  'eslint',
  'lua_ls',
  'mdx_analyzer',
  'pyright',
})

-- Ensure formatters are installed
require('mason').setup()
require('mason-lspconfig').setup()

-- Install prettier via Mason
local mason_registry = require('mason-registry')
if not mason_registry.is_installed('prettier') then
  vim.cmd('MasonInstall prettier')
end

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

lsp.setup()

vim.keymap.set('n', 'T', function()
  vim.diagnostic.open_float(nil, { focus = false, scope = 'line' })
end, { desc = 'Open diagnostic float' })


vim.keymap.set('n', '<leader>pt', '<cmd>Telescope lsp_type_definitions<CR>', { desc = 'Peek type definition' })
vim.keymap.set('n', '<leader>py', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { desc = 'Go to type definition' })

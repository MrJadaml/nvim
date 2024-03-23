local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({ buffer = bufnr })
end)

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'lua_ls',
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

lsp.setup()

vim.keymap.set('n', 'T', function()
  vim.diagnostic.open_float(nil, { focus = false, scope = 'line' })
end, { desc = 'Open diagnostic float' })

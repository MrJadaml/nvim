local cmp = require('cmp')

cmp.setup({
  -- ... other configuration options ...

  -- Specify a list of sources to use for completion.
  sources = {
    { name = 'nvim_lsp' }, -- Use LSP as a completion source.
    { name = 'buffer' },   -- Use the buffer content as a completion source.
    -- Add more sources as needed.
  },

  -- Customize key mappings.
  mapping = {
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- Add more key mappings as needed.
  },
})


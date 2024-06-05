-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Move highlighted text up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Remove search highlight
vim.keymap.set('n', '<Esc><Esc>', '<Esc>:nohlsearch<CR><Esc>', { noremap = true, silent = true })

-- Copy
vim.cmd('set clipboard+=unnamedplus')
vim.keymap.set('n', '<leader>y', '\"+y')
vim.keymap.set('v', '<leader>y', '\"+y')
vim.keymap.set('n', '<leader>Y', '\"+Y')

-- Preserve copied text when pasting
vim.keymap.set('x', '<leader>p', '\"_dp')

-- Highlight flash on yank
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Disable Ex mode
vim.keymap.set('n', 'Q', '<Nop>', { noremap = true })

-- Netrw
-- Open Netrw from terminal
-- vim.api.nvim_create_autocmd("VimEnter", {
--   pattern = "*",
--   command = "Explore",
-- })

-- Open NetRW sidebar
-- vim.keymap.set('n', '<leader>rw', vim.cmd.Vex)

-- Sync directories. This helps avoid move files error.
-- vim.g.netrw_keepdir = 0

-- Tree style
-- vim.g.netrw_liststyle = 3
-- vim.g.netrw_altv = 1
-- vim.g.netrw_banner = 0
-- vim.g.netrw_list_hide = [[\(^\|\s\s\)\zs\.\S\+]]
-- vim.g.netrw_winsize = 25

-- runs Prettier on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    -- Use the new formatting function with options
    vim.lsp.buf.format({ timeout_ms = 1000 })
  end,
})

-- local M = {}

-- local colors = {
--   "#66CDAA", -- Aquamarine
--   "#DDA0DD", -- Plum
--   "#FFDAB9", -- Peach
-- }

-- function M.change_statusline_colors(layer)
--   local function choose_color()
--     return colors[layer]
--   end

--   local status_bar_color = choose_color()
--   local text_color = "#000000"

--   vim.cmd(string.format("hi StatusLine guifg=%s guibg=%s", text_color, status_bar_color))
--   vim.cmd(string.format("hi StatusLineNC guifg=%s guibg=%s", text_color, status_bar_color))
-- end

-- vim.api.nvim_set_keymap('n', '<S-F1>', '<nop>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<S-F2>', '<nop>', { noremap = true, silent = true })

-- vim.api.nvim_set_keymap('i', '<S-F1>', '<nop>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<S-F2>', '<nop>', { noremap = true, silent = true })

-- vim.api.nvim_set_keymap('c', '<S-F1>', '<nop>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('c', '<S-F2>', '<nop>', { noremap = true, silent = true })

-- -- Key mappings for normal mode
-- vim.api.nvim_set_keymap('n', '<S-F1>', ':lua require("zmk-layers").change_statusline_colors(1)<CR>',
--   { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<S-F2>', ':lua require("zmk-layers").change_statusline_colors(2)<CR>',
--   { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<S-F3>', ':lua require("zmk-layers").change_statusline_colors(3)<CR>',
--   { noremap = true, silent = true })

-- -- Key mappings for insert mode
-- vim.api.nvim_set_keymap('i', '<S-F1>', '<Esc>:lua require("zmk-layers").change_statusline_colors(1)<CR>a',
--   { noremap = true, silent = false })
-- vim.api.nvim_set_keymap('i', '<S-F2>', '<Esc>:lua require("zmk-layers").change_statusline_colors(2)<CR>a',
--   { noremap = true, silent = false })
-- vim.api.nvim_set_keymap('i', '<S-F3>', '<Esc>:lua require("zmk-layers").change_statusline_colors(3)<CR>a',
--   { noremap = true, silent = false })

-- -- Key mappings for command-line mode
-- --
-- vim.api.nvim_set_keymap('c', '<S-F1>', '<C-\\><C-N>:lua require("zmk-layers").change_statusline_colors(1)<CR>A',
--   { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('c', '<S-F2>', '<C-\\><C-N>:lua require("zmk-layers").change_statusline_colors(1)<CR>A',
--   { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('c', '<S-F3>', '<C-\\><C-N>:lua require("zmk-layers").change_statusline_colors(1)<CR>A',
--   { noremap = true, silent = true })

-- return M

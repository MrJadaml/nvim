local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
	-- This appears to not be working --
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})

vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- setup hidden_files defaults
vim.g.telescope_defaults = {
  hidden_files = true,
}

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      ".git/*",
      "node_modules/*",
      "%.lock",
    },
    hidden_files = false,
    vimgrep_arguments = { unpack(require('telescope.config').values.vimgrep_arguments) },
    find_command = { 'fd', '--type', 'f', '--hidden', '--strip-cwd-prefix' },
  }
}

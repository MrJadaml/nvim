-- Open NetRW
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Preserve copied text when pasting
vim.keymap.set("x", "<leader>p", "\"_dp")

-- Remove search highlight
vim.keymap.set("n", "<Esc><Esc>", "<Esc>:nohlsearch<CR><Esc>", { noremap = true, silent = true })

-- Clear all trailing whitespace
vim.keymap.set("n", "<leader>nw", ":FixWhitespace<CR>", { noremap = true })

-- Disable Ex mode
vim.keymap.set("n", "Q", "<Nop>", { noremap = true })


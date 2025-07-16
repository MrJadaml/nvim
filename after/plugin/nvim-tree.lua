-- enable 24-bit colour
vim.opt.termguicolors = true
vim.api.nvim_set_keymap('n', '<C-\\>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")


  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  vim.keymap.set('n', 'w', api.node.navigate.parent_close, opts('Close Directory'))
  api.config.mappings.default_on_attach(bufnr)
end

require('nvim-tree').setup({
  on_attach = my_on_attach,
  filters = {
    dotfiles = false,
  },
  diagnostics = {
    enable = true,
  },
  disable_netrw = true,
  hijack_netrw = true,
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = false,
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  view = {
    adaptive_size = false,
    side = "left",
    width = 40,
    preserve_window_proportions = true,
  },
  git = {
    enable = true,
    ignore = false,
  },
  filesystem_watchers = {
    enable = true,
  },
  actions = {
    open_file = {
      resize_window = true,
    },
  },
  renderer = {
    group_empty = true,
    root_folder_label = false,
    highlight_git = true,
    highlight_opened_files = "none",
    indent_markers = {
      enable = true,
    },
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "󰈚",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  sort = {
    sorter = "case_sensitive",
  },
})

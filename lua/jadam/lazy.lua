local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

vim.g.mapleader = ' '

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
return require('lazy').setup({
  'nvim-lua/plenary.nvim',
  'ThePrimeagen/harpoon',
  'mbbill/undotree',
  'Raimondi/delimitMate',
  'tpope/vim-commentary',
  'tpope/vim-repeat',
  'tpope/vim-surround',
  'tpope/vim-fugitive',
  'github/copilot.vim',
  'easymotion/vim-easymotion',
  'NvChad/nvim-colorizer.lua',
  'max397574/better-escape.nvim',
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {}
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    -- or                          , branch = '0.1.x',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
    }
  },
  {
    'bluz71/vim-nightfly-colors',
    as = 'nightfly',
    config = function()
      vim.cmd('colorscheme nightfly')
    end
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    after = 'nvim-lspconfig', -- Ensure it loads after lspconfig
    config = function()
      require('null-ls').setup({
        sources = {
          require('null-ls').builtins.formatting.prettier.with({
            -- Add any Prettier config options here
          }),
        },
      })
    end
  },
  {
    'sudormrfbin/cheatsheet.nvim',

    dependencies = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    }
  }
})

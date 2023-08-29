local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

return require('lazy').setup({
  'nvim-lua/plenary.nvim',
  'ThePrimeagen/harpoon',
  'mbbill/undotree',
  'tpope/vim-fugitive',
  'easymotion/vim-easymotion',
  'numToStr/Comment.nvim',
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
  {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                          , branch = '0.1.x',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
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
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }
})

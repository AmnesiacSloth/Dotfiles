-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "ellisonleao/gruvbox.nvim" }

  use( 
  'nvim-treesitter/nvim-treesitter',
  {  run = ':TSUpdate'}
  ) 

  --use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
  use {
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')
  -- from lsp-zero.nvim --
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = "v4.x",
	  requires = {
		  -- Autocompletion
		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  -- LSP Support -- 
		  {"williamboman/mason.nvim"},
		  {"williamboman/mason-lspconfig.nvim"},
	  }
  }
end)


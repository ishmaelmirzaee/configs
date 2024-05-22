-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  -- aura-theme
  use {
	  'daltonmenezes/aura-theme',
	  rtp = 'packages/neovim',
	  config = function()
		  vim.cmd("colorscheme aura-dark") -- Or any Aura theme available
	  end
  }

  -- nvim treesitter
  -- https://github.com/nvim-treesitter/nvim-treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})


  -- treesitter playground
  use('nvim-treesitter/playground')

  -- file manager; helps you to navigate between files easily using defined keybindings
  use('theprimeagen/harpoon')

  -- undotree; 
  use('mbbill/undotree')

  --
  use('tpope/vim-fugitive')

end)

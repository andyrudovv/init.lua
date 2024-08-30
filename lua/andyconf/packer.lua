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
  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
  use ( 'theprimeagen/harpoon')
  use ( 'mbbill/undotree' )
  use ( 'tpope/vim-fugitive' )

  use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
  use({'neovim/nvim-lspconfig'})
  use({'williamboman/mason.nvim'})
  use({'williamboman/mason-lspconfig.nvim'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use({ "onsails/lspkind-nvim", event = "VimEnter" })

  use({ "L3MON4D3/LuaSnip", after = 'nvim-cmp', })

  -- auto-completion engine

  use({ "saadparwaiz1/cmp_luasnip" })

  use ({"hrsh7th/cmp-nvim-lua",after = "cmp_luasnip",})

  use({ "hrsh7th/cmp-path", after = "nvim-cmp" })
  use({ "hrsh7th/cmp-buffer", after = "nvim-cmp" })
  use({ "hrsh7th/cmp-omni", after = "nvim-cmp" })

  use({ "rafamadriz/friendly-snippets" })

end)

-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--

-- Only required if you have packer configured as `opt`
--
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- https://github.com/nvim-treesitter/nvim-treesitter
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- https://github.com/LunarVim/darkplus.nvim
	use({ "lunarvim/darkplus.nvim"})

	-- https://github.com/folke/which-key.nvim
	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			}
		end
	}

	-- https://github.com/nvim-treesitter/nvim-treesitter
	-- translated from this: Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- https://github.com/mbbill/undotree
	use 'mbbill/undotree'

	-- https://github.com/tpope/vim-fugitive
	use 'tpope/vim-fugitive'


	-- https://github.com/nvim-tree/nvim-tree.lua
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
		config = function()
			require("nvim-tree").setup {}
		end
	}

	-- It appears these need to be used together
	-- https://github.com/JoosepAlviste/nvim-ts-context-commentstring
	use({ "JoosepAlviste/nvim-ts-context-commentstring" })
	-- https://github.com/numToStr/Comment.nvim
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	--[[ LSP setup ]]
	-- use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
	-- https://github.com/VonHeikemen/lsp-zero.nvim#quickstart-for-the-impatient
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

	-- More Autocomplete
	use {
		{"hrsh7th/cmp-buffer"},
		{"hrsh7th/cmp-path"},
	}

end)


-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]];


return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim' -- Packer can manage itself

  -- Plugins 
  use { "folke/which-key.nvim" }
  use { "akinsho/toggleterm.nvim" }
  use { "nvim-tree/nvim-tree.lua" }
  
	-- Colorschemes
	use "folke/tokyonight.nvim"
	use "lunarvim/darkplus.nvim"

	-- Cmp 
	use { "hrsh7th/nvim-cmp"} -- The completion plugin
	use { "hrsh7th/cmp-buffer" } -- buffer completions
	use { "hrsh7th/cmp-path" } -- path completions
	use { "saadparwaiz1/cmp_luasnip" } -- snippet completions
	use { "hrsh7th/cmp-nvim-lsp" }
	use { "hrsh7th/cmp-nvim-lua"}

	-- Lsp
	use { "neovim/nvim-lspconfig"} -- enable LSP
	use { "williamboman/mason.nvim"} -- simple to use language server installer
	use { "williamboman/mason-lspconfig.nvim"}
	use { "jose-elias-alvarez/null-ls.nvim"} -- for formatters and linters
	use { "RRethy/vim-illuminate"}

	-- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

	-- Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Terminals

  -- Git
  use { "lewis6991/gitsigns.nvim" }
  use { "tpope/vim-fugitive" }
end)

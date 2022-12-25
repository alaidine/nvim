local status, packer = pcall(require, "packer")

if (not status) then
	print("Packer is not installed")
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'windwp/nvim-autopairs'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'
	use 'tribela/vim-transparent'
	use 'glepnir/dashboard-nvim'
	use 'tpope/vim-surround'

	-- colorscheme
	use 'RRethy/nvim-base16'
	use 'ellisonleao/gruvbox.nvim'

	-- autocompletion
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/nvim-cmp'

	-- snippets
	use 'L3MON4D3/LuaSnip' -- snippet engine
	use 'saadparwaiz1/cmp_luasnip' -- for autocompletion
	use 'rafamadriz/friendly-snippets' -- useful snippets

	-- configuring lsp servers
	use 'neovim/nvim-lspconfig'  -- easily configure language servers
	use { 'glepnir/lspsaga.nvim', branch = 'main' }  -- enhanced lsp uis
	use 'jose-elias-alvarez/typescript.nvim'  -- additional functionality for typescript server (e.g. rename file & update imports)
	use 'onsails/lspkind.nvim'  -- vs-code like icons for autocompletion

	-- git integration
	use 'lewis6991/gitsigns.nvim'

	-- bufferline
	use 'akinsho/nvim-bufferline.lua'

	-- statusline
	use 'nvim-lualine/lualine.nvim'

	-- treesitter
	use {
    'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
end)

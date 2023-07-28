vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("marko-cerovac/material.nvim")
	use("windwp/nvim-autopairs")
	use("akinsho/nvim-bufferline.lua")
	use("ellisonleao/gruvbox.nvim")
	use("theprimeagen/harpoon")
	use("mbbill/undotree")
	use("glepnir/lspsaga.nvim")
	use("onsails/lspkind.nvim")
	use("lewis6991/gitsigns.nvim")
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls
	use("dinhhuy258/git.nvim") -- For git blame & browse
	use("nvim-lualine/lualine.nvim")
	use("christoomey/vim-tmux-navigator")
	use("navarasu/onedark.nvim")
	use("folke/tokyonight.nvim")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("catppuccin/nvim")
	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
	})
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "saadparwaiz1/cmp_luasnip" },
			{ "rafamadriz/friendly-snippets" },
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	})
end)

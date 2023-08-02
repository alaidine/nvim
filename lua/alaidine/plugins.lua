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

local plugins = {
  "folke/which-key.nvim",
  "lewis6991/gitsigns.nvim",
  "nvim-tree/nvim-tree.lua",
  "folke/neodev.nvim",
  "kyazdani42/nvim-web-devicons",
  "amirrezaask/fuzzy.nvim",
  "onsails/lspkind.nvim",
  "nekonako/xresources-nvim",
  {'akinsho/bufferline.nvim', version = "*"},
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  {"nvim-treesitter/nvim-treesitter", cmd = "TSUpdate" },
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" }
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
      {'saadparwaiz1/cmp_luasnip'},
      {'rafamadriz/friendly-snippets'},
      {'hrsh7th/cmp-buffer'},     -- Required
      {'hrsh7th/cmp-path'},     -- Required
      {'hrsh7th/cmp-cmdline'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
  },
}

local opts = {}

require("lazy").setup(plugins, opts)

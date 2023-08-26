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
  "Tsuzat/NeoSolarized.nvim",
  "Shatur/neovim-ayu",
  "ellisonleao/gruvbox.nvim",
  "xiyaowong/transparent.nvim",
  "dinhhuy258/git.nvim",
  "folke/neodev.nvim",
  "nvim-tree/nvim-tree.lua",
  "kyazdani42/nvim-web-devicons",
  "onsails/lspkind.nvim",
  "nekonako/xresources-nvim",
  "nvim-lualine/lualine.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  { "nvim-treesitter/nvim-treesitter", cmd = "TSUpdate" },
  { 'windwp/nvim-autopairs', event = "InsertEnter" },
  { 'glepnir/dashboard-nvim', event = 'VimEnter' },
  { "akinsho/bufferline.nvim", version = "*" },
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
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
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {

    }
  }
}

local opts = {}

require("lazy").setup(plugins, opts)

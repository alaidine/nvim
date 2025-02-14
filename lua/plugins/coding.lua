return {
  { "nmac427/guess-indent.nvim", opts = {} },
  { "nvim-lua/plenary.nvim" },
  { "tpope/vim-fugitive" },
  { "tpope/vim-obsession" },
  {
    "rust-lang/rust.vim",
    config = function()
      vim.cmd([[
  syntax enable
  filetype plugin indent on
]])
    end,
  },
}

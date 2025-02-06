return {
  { "nmac427/guess-indent.nvim", opts = {} },
  { "nvim-lua/plenary.nvim" },
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

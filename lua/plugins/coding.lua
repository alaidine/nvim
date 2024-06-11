return {
  {
    "FotiadisM/tabset.nvim",
    opts = {
      defaults = {
        tabwidth = 2,
        expandtab = true,
      },
      languages = {
        {
          filetypes = { "rust", "c", "cpp" },
          config = {
            tabwidth = 4,
            expandtab = true,
          },
        },
      },
    },
  },

  {
    "folke/zen-mode.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
    },
  },
}

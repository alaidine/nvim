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
          filetypes = { "python", "zig", "rust", "c", "cpp" },
          config = {
            tabwidth = 4,
            expandtab = true,
          },
        },
        {
          filetypes = { "make" },
          config = {
            tabwidth = 4,
            expandtab = false,
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

  {
    "folke/twilight.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}

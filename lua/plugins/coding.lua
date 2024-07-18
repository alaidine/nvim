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

    {
      "nvim-neorg/neorg",
      lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
      version = "*", -- Pin Neorg to the latest stable release
      config = true,
    },
  },
}

return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = {},
  },
  { "norcalli/nvim-colorizer.lua" },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },
  {
    "sainnhe/gruvbox-material",
    config = function()
      -- vim.cmd([[
      --   let g:gruvbox_material_transparent_background = 1
      --   colorscheme gruvbox-material
      -- ]])
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
      })
      -- vim.cmd([[colorscheme catppuccin]])
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "moon",
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      })
      if vim.g.neovide then
        require("tokyonight").setup({
          transparent = false,
        })
      end
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local function obsession_status()
        return vim.fn["ObsessionStatus"]()
      end

      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = "auto",
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          always_show_tabline = true,
          globalstatus = false,
          refresh = {
            statusline = 100,
            tabline = 100,
            winbar = 100,
          },
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { "filename" },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { obsession_status, "progress" },
          lualine_z = { "location" },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {
          lualine_a = { "buffers" },
          lualine_b = { "branch" },
          lualine_c = { "filename" },
          lualine_x = {},
          lualine_y = {},
          lualine_z = { "tabs" },
        },
        winbar = {},
        inactive_winbar = {},
        extensions = {},
      })
    end,
  },
}

return {
    {
        "ellisonleao/gruvbox.nvim",
        opts = function()
            local transparent = true

            if vim.g.neovide then
                transparent = false
            end
            return {
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                    strings = true,
                    comments = true,
                    operators = false,
                    folds = true,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "", -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = transparent,
            }
        end,
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = true,
            style = "night",
        },
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 100,
        opts = {
            flavour = "mocha",
            transparent_background = true,
        }
    }
}

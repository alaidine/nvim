
return {
    {
        "ellisonleao/gruvbox.nvim",
        opts = function()
            local enable_transparency = true

            if vim.g.neovide then
                enable_transparency = false
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
                transparent_mode = enable_transparency,
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
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            }
        },
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 100,
        opts = function()
            local enable_transparency = true

            if vim.g.neovide then
                enable_transparency = false
            end
            return {
                flavour = "mocha",
                transparent_background = enable_transparency,
            }
        end,
    },

    {
        "bluz71/vim-nightfly-colors",
        name = "nightfly",
        lazy = false,
        priority = 1000
    },

	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
            local enable_transparency = true

            if vim.g.neovide then
                enable_transparency = false
            end
			return {
				transparent = enable_transparency,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                }
			}
		end,
	},

    {
        "tiagovla/tokyodark.nvim",
        opts = {
            transparent_background = true,
        },
        config = function(_, opts)
            require("tokyodark").setup(opts)
        end,
    },
}

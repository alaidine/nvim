require("alaidine.base")
require("alaidine.highlights")
require("alaidine.maps")
require("alaidine.plugins")

local function setColorscheme(colors)
	require("alaidine.colors." .. colors)
end

-- setColorscheme("catppuccin")
vim.cmd("colorscheme base16-gruvbox-material-dark-hard")
-- vim.cmd("colorscheme default")

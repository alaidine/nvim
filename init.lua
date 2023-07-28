require("alaidine.base")
require("alaidine.highlights")
require("alaidine.keymaps")

function SetColorscheme(colorscheme)
	require("alaidine.colors." .. colorscheme)
end

SetColorscheme("tokyonight")

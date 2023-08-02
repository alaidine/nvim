require("alaidine.base")
require("alaidine.highlights")
require("alaidine.maps")
require("alaidine.plugins")

function SetColorscheme(colors)
  require("alaidine.colors." .. colors)
end

SetColorscheme("xresources")

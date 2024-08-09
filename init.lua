-- Load core configuration
require('core.options')
require('core.keymaps')
require('core.autocmds')

-- Load plugins
require('plugins')

-- Load plugin-specific configurations
require('plugins.treesitter')
require('plugins.colors')

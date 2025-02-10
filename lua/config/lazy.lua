-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

opt.number = true
opt.scrolloff = 10
opt.colorcolumn = "80"
opt.guicursor = ""
opt.clipboard = "unnamedplus"
opt.relativenumber = true

P = function(...)
  local args = {}
  for _, arg in ipairs({ ... }) do
    table.insert(args, vim.inspect(arg))
  end
  print(unpack(args))
  return ...
end

RELOAD = function(...)
  return require("plenary.reload").reload_module(...)
end

R = function(name)
  RELOAD(name)
  require(name)
end

SETUP = function(name)
  RELOAD(name)
  require(name).setup()
end

local map = vim.keymap.set

map("n", "<leader><leader>", "<cmd>FzfLua<cr>", { desc = "FzfLua" })
map("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "find files" })

map("n", "<leader>e", "<cmd>Ex<cr>", { desc = "Explore" })

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "gruvbox" } },
  -- automatically check for plugin updates
  checker = { enabled = false },
})

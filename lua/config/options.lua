-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.scrolloff = 10
opt.cursorline = false

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

vim.g.autoformat = false

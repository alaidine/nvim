local set = vim.opt -- set options

vim.scriptencoding = "utf-8"
set.encoding = "utf-8"

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

set.hlsearch = true
vim.shiftwidth = 2
vim.laststatus = 2
set.wrap = false
set.shell = "zsh"
vim.cmdheight = 1
set.scrolloff = 10

set.ignorecase = true
set.smartcase = true

set.cursorline = true

set.termguicolors = true
set.background = "dark"
set.signcolumn = "yes"

-- highlights
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = "pum"
vim.opt.pumblend = 5
vim.opt.background = "dark"

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd([[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]])

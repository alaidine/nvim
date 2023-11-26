-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- disable netrw at the very start of your init.lua
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.expandtab = true
vim.opt.wrap = false -- No Wrap lines
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.scrolloff = 10
vim.opt.colorcolumn = "81"
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.g.autoformat = false

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "html",
        "typescript",
        "javascript",
        "typescriptreact",
        "json",
        "css"
    },
    command = "setlocal shiftwidth=2 tabstop=2"
})

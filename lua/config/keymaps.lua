-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local discipline = require("alaidine.discipline")

-- discipline.cowboy()


map("n", "te", ":tabedit")

map("n", "<leader>bd", ":bdelete<cr>")
map("n", "<leader>bn", ":bnext<cr>")
map("n", "<leader>bn", ":bprevious<cr>")

map("n", "<leader>h", ":EpiHeader<cr>")

map("n", "<leader>l", ":LazyGit<cr>")

map("n", "<C-m>", "<C-i>", opts)


map("n", "ss", ":split<cr>", opts)
map("n", "sv", ":vsplit<cr>", opts)

map("n", "<leader>rr", ":IncRename")

map("n", "<C-j>", function()
    vim.diagnostic.goto_next()
end, opts)

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local discipline = require("alaidine.discipline")

discipline.cowboy()

map("n", "<space><space>", "<C-w>w")

map("n", "<leader>te", ":tabedit<cr>")

map("n", "<Tab>", ":bnext<cr>")
map("n", "<S-Tab>", ":bprevious<cr>")
map("n", "<leader>bd", ":bdelete<cr>")

map("n", "<leader>h", ":EpiHeader<cr>")

map("n", "<leader>l", ":LazyGit<cr>")

map("n", "<C-m>", "<C-i>", opts)

map("n", "<C-j>", function()
    vim.diagnostic.goto_next()
end, opts)

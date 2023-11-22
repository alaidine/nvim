-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
map("n", "<space><space>", "<C-w>w")

map("n", "<leader>te", ":tabedit<cr>")

map("n", "<Tab>", ":bnext<cr>")
map("n", "<S-Tab>", ":bprevious<cr>")
map("n", "<leader>bd", ":bdelete<cr>")

map("n", "<leader>tf", ":ToggleTerm direction=float<cr>")
map("n", "<leader>tv", ":ToggleTerm direction=vertical size=50<cr>")
map("n", "<leader>tt", ":ToggleTerm direction=tab<cr>")
map("n", "<leader>th", ":ToggleTerm<cr>")

map("n", "<leader>h", ":EpiHeader<cr>")

map("n", "<leader>l", ":LazyGit<cr>")

map("n", "<C-m>", "<C-i>", opts)

--  map("n", "<C-j>", function()
--      vim.diagnostics.goto_next()
--  end, opts)

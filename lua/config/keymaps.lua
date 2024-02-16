-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

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

map("x", "<leader>re", ":Refactor extract ")
map("x", "<leader>rf", ":Refactor extract_to_file ")

map("x", "<leader>rv", ":Refactor extract_var ")

map({ "n", "x" }, "<leader>ri", ":Refactor inline_var")

map( "n", "<leader>rI", ":Refactor inline_func")

map("n", "<leader>rb", ":Refactor extract_block")
map("n", "<leader>rbf", ":Refactor extract_block_to_file")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "te", ":tabedit<cr>")

vim.keymap.set("n", "sv", ":vsplit<cr>")
vim.keymap.set("n", "ss", ":split<cr>")

vim.keymap.set("n", "<space><space>", "<C-w>w")
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sl", "<C-w>l")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sk", "<C-w>k")

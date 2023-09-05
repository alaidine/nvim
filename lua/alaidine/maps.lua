vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", "<C-w>")
vim.keymap.set("n", "<space><space>", "<C-w>w")

vim.keymap.set("n", "te", ":tabedit<cr>")
vim.keymap.set("n", "<Tab>", ":tabnext<cr>")
vim.keymap.set("n", "<S-Tab>", ":tabprevious<cr>")

vim.keymap.set("n", "<leader>bb", ":buffers<cr>")
vim.keymap.set("n", "<leader>bn", ":bnext<cr>")
vim.keymap.set("n", "<leader>bp", ":bprevious<cr>")
vim.keymap.set("n", "<leader>bd", ":bdelete<cr>")

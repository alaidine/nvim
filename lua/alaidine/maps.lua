vim.g.mapleader = " "

local map = vim.keymap.set

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
map("n", "<leader>w", "<C-w>")
map("n", "<space><space>", "<C-w>w")

map("n", "te", ":tabedit<cr>")

map("n", "<Tab>", ":bnext<cr>")
map("n", "<S-Tab>", ":bprevious<cr>")
map("n", "<leader>bb", ":buffers<cr>")
map("n", "<leader>bd", ":bdelete<cr>")
map("n", "<leader>bs", ":b ")

map("n", "<leader>tf", ":ToggleTerm direction=float<cr>")
map("n", "<leader>tv", ":ToggleTerm direction=vertical size=50<cr>")
map("n", "<leader>tt", ":ToggleTerm direction=tab<cr>")
map("n", "<leader>th", ":ToggleTerm<cr>")

map("n", "<leader>h", ":EpiHeader<cr>")

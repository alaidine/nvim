vim.g.mapleader = " " -- set leader key to space:

local keymap = vim.keymap

-- Telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
keymap.set("n", "<leader>fr", ":Telescope live_grep<cr>")
keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")
keymap.set("n", "<leader>bb", ":Telescope file_browser<cr>")

-- spliting panes
keymap.set("n", "<leader>zz", ":split<cr>")
keymap.set("n", "<leader>zv", ":vsplit<cr>")

-- navigating between panes
keymap.set("n", "<leader>h", "<C-w>h")
keymap.set("n", "<leader>l", "<C-w>l")
keymap.set("n", "<leader>j", "<C-w>j")
keymap.set("n", "<leader>k", "<C-w>k")

-- open new tab
keymap.set("n", "te", ":tabedit<cr>")

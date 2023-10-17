vim.g.mapleader = " "

local map = vim.keymap.set

-- vim-tmux-navigator
if os.getenv("TMUX") then
  map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
  map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
  map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
  map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
end

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
map("n", "<leader>w", "<C-w>")
map("n", "<space><space>", "<C-w>w")

map("n", "te", ":tabedit<cr>")

map("n", "<Tab>", ":bnext<cr>")
map("n", "<S-Tab>", ":bprevious<cr>")
map("n", "<leader>bb", ":buffers<cr>")
map("n", "<leader>bd", ":bdelete<cr>")
map("n", "<leader>bs", ":b ")

map("n", "<leader>tj", ":TmuxNavigateDown<cr>")
map("n", "<leader>tk", ":TmuxNavigateUp<cr>")
map("n", "<leader>th", ":TmuxNavigateLeft<cr>")
map("n", "<leader>tl", ":TmuxNavigateRight<cr>")

map("n", "<leader>h", ":EpiHeader<cr>")

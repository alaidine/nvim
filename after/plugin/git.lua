local status, git = pcall(require, "git")
if (not status) then return end

vim.keymap.set("n", "<leader>gs", ":Git ")

git.setup({
  keymaps = {
    -- Open blame window
    blame = "<leader>gb",
    -- Open file/folder in git repository
    browse = "<leader>go",
  }
})

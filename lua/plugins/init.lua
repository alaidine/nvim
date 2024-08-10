local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('preservim/nerdtree', { ['on'] = 'NERDTreeToggle' })

Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })

Plug('ellisonleao/gruvbox.nvim')

Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'})

Plug('junegunn/fzf', { ['do'] = function()
  vim.fn['fzf#install']()
end })
Plug('junegunn/fzf.vim')

Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')

vim.call('plug#end')

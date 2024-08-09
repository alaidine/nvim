local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('preservim/nerdtree', { ['on'] = 'NERDTreeToggle' })
Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })
Plug('ellisonleao/gruvbox.nvim')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'})
Plug('junegunn/fzf', { ['do'] = '{ -> fzf#install() }' })
Plug('junegunn/fzf.vim')

vim.call('plug#end')

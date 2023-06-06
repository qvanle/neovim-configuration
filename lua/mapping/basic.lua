local global = vim.g

global.mapleader = " "
global.maplocalleader = " "

vim.api.nvim_set_keymap('n', '<leader>fo', 'gg=G<C-o>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-s>', ':wa!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-s>', ':<C-U>wa!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:wa!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<C-s>', '<C-C>:wa!<CR>', { noremap = true, silent = true })

vim.keymap.set('i', '<A-h>', '<left>', {noremap = true, silent = true})
vim.keymap.set('i', '<A-j>', '<down>', {noremap = true, silent = true})
vim.keymap.set('i', '<A-k>', '<up>', {noremap = true, silent = true})
vim.keymap.set('i', '<A-l>', '<right>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader><leader>', ':noh<CR>', {noremap = true, silent = true})


vim.keymap.set('n', '<leader>cfg', ':cd ~/.config/nvim/lua/<CR>:e ../init.lua<CR>', {silent = true, noremap = true})

vim.keymap.set('n', '<leader>ref', ':cd %:h<CR>', {noremap = true, silent = true})

vim.keymap.set('i', '<C-y>', '<C-o>dw', {noremap = true, silent = true})


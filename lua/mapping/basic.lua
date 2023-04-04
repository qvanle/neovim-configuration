local global = vim.g

global.mapleader = " "
global.maplocalleader = " "

vim.api.nvim_set_keymap('n', '<C-s>', ':wa!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-s>', ':<C-U>wa!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:wa!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<C-s>', '<C-C>:wa!<CR>', { noremap = true, silent = true })

vim.keymap.set('i', '<A-h>', '<left>', {noremap = true, silent = true})
vim.keymap.set('i', '<A-j>', '<down>', {noremap = true, silent = true})
vim.keymap.set('i', '<A-k>', '<up>', {noremap = true, silent = true})
vim.keymap.set('i', '<A-l>', '<right>', {noremap = true, silent = true})

vim.keymap.set('n', '<leader><leader>', ':noh<CR>', {noremap = true, silent = true})


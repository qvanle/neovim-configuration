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
vim.keymap.set('n', '<leader>sh', ':! touch build.sh && chmod +x build.sh<CR>:e build.sh<CR>', {noremap = true, silent = true})

vim.keymap.set('i', '<C-y>', '<C-o>dw', {noremap = true, silent = true})

vim.keymap.set('i', '<C-d>', '<C-o>yy<C-o>p', {noremap = true, silent = true})
vim.keymap.set('n', '<C-d>', 'yyp', {noremap = true, silent = true})

vim.keymap.set('n', '<C-e>', ':bd!<CR>', {noremap = true, silent = true})

vim.keymap.set('n', '<A-h>', '<down>', {noremap = true, silent = true})
vim.keymap.set('i', '<A-h>', '<down>', {noremap = true, silent = true})
vim.keymap.set('v', '<A-h>', '<down>', {noremap = true, silent = true})

vim.keymap.set('n', '<A-t>', '<up>', {noremap = true, silent = true})
vim.keymap.set('i', '<A-t>', '<up>', {noremap = true, silent = true})
vim.keymap.set('v', '<A-t>', '<up>', {noremap = true, silent = true})

vim.keymap.set('n', '<A-n>', '<right>', {noremap = true, silent = true})
vim.keymap.set('i', '<A-n>', '<right>', {noremap = true, silent = true})
vim.keymap.set('v', '<A-n>', '<right>', {noremap = true, silent = true})

vim.keymap.set('n', '<A-d>', '<left>', {noremap = true, silent = true})
vim.keymap.set('i', '<A-d>', '<left>', {noremap = true, silent = true})
vim.keymap.set('v', '<A-d>', '<left>', {noremap = true, silent = true})


vim.keymap.set('n', '<A-p>', 'w', {noremap = true, silent = true})
vim.keymap.set('i', '<A-p>', '<C-o>w', {noremap = true, silent = true})
vim.keymap.set('v', '<A-p>', 'w', {noremap = true, silent = true})


vim.keymap.set('n', '<A-y>', 'b', {noremap = true, silent = true})
vim.keymap.set('i', '<A-y>', '<C-o>b', {noremap = true, silent = true})
vim.keymap.set('v', '<A-y>', 'b', {noremap = true, silent = true})

vim.keymap.set('n', '<leader>hxm', ':%!xxd<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>txm', ':%!xxd -r<CR>', {noremap = true, silent = true})


vim.g.mapleader = ' '

vim.g.maplocalleader = ' '

-- move cursor in insert mode 

vim.keymap.set('i', '<A-h>', '<left>')
vim.keymap.set('i', '<A-j>', '<down>')
vim.keymap.set('i', '<A-k>', '<up>')
vim.keymap.set('i', '<A-l>', '<right>')

vim.keymap.set('i', '<A-w>', '<c-o>w')
vim.keymap.set('i', '<A-W>', '<c-o>W')
vim.keymap.set('i', '<A-b>', '<c-o>b')
vim.keymap.set('i', '<A-B>', '<c-o>B')
vim.keymap.set('i', '<A-e>', '<c-o>e')
vim.keymap.set('i', '<A-E>', '<c-o>E')
vim.keymap.set('i', '<A-$>', '<c-o>$')
vim.keymap.set('i', '<A-^>', '<c-o>^')

-- save file
vim.keymap.set('i', '<c-s>', '<c-o>:wa!<CR>')
vim.keymap.set('n', '<c-s>', ':wa!<CR>')

-- undo and redo

vim.keymap.set('i', '<A-z>', '<c-o>:undo<CR>')
vim.keymap.set('i', '<A-y>', '<c-o>:redo<CR>')

-- save and quit neovim
vim.keymap.set('', '<A-Z><A-Z>', '<c-o>:wqa!<CR>')

-- close buffer
vim.keymap.set('i', '<A-q>', '<c-o>:bd<CR>')
vim.keymap.set('n', '<A-q>', ':bd<CR>')

-- turn off highlight when searching
vim.keymap.set('n', '<A-F>', ':noh<CR>')
vim.keymap.set('i', '<A-F>', '<c-o>:noh<CR>')

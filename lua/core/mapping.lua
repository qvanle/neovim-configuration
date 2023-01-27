vim.g.mapleader = ' '

vim.g.maplocalleader = ' '

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

vim.keymap.set('i', '<c-s>', '<c-o>:w!<CR> :echo "Saved" <CR>')
vim.keymap.set('n', '<c-s>', ':w!<CR> :echo "Saved" <CR>')

vim.keymap.set('n', '<leader>clf', ':noh<CR>')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fgs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fts', builtin.treesitter, {})

vim.keymap.set('n', '<c-n>', ":NvimTreeFindFileToggle<CR>")

vim.keymap.set('n', '<leader>his', ":UndotreeToggle<CR>")

vim.keymap.set("", "<A-t>", ":ToggleTerm<CR>")

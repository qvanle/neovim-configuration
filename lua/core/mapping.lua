vim.g.mapleader = ' '

vim.g.maplocalleader = ' '

-- move cursor in insert mode 

vim.keymap.set('i', '<A-h>', '<left>')
vim.keymap.set('i', '<A-j>', '<down>')
vim.keymap.set('i', '<A-k>', '<up>')
vim.keymap.set('i', '<A-l>', '<right>')

vim.keymap.set('i', '<A-w>', '<c-o>w<CR>')
vim.keymap.set('i', '<A-W>', '<c-o>W<CR>')
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


-- finding file and grep string 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fgs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fts', builtin.treesitter, {})

-- file explorer
vim.keymap.set('n', '<A-f>', ":NvimTreeFindFileToggle<CR>")
vim.keymap.set('i', '<A-f>', "<c-o>:NvimTreeFindFileToggle<CR>")


-- version history
vim.keymap.set('n', '<leader>his', ":UndotreeToggle<CR>")


-- terminal
vim.keymap.set("", "<A-t>", ":ToggleTerm<CR>")


-- rename variable
vim.keymap.set("n", "<leader>ren", function()
  return ":Ren " .. vim.fn.expand("<cword>")
end, { expr = true })

-- buffer manager panel
vim.keymap.set('', '<A-B>', require("buffer_manager.ui").toggle_quick_menu, {noremap = true})


-- CMake 
vim.keymap.set('n', '<leader>crn', ':CMakeBuild CMAKE')

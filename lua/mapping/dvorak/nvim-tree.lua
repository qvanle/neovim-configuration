vim.api.nvim_set_keymap('n', '<C-u>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-u>', ':<C-U>NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-u>', '<Esc>:NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<C-u>', '<C-C>:NvimTreeToggle<CR>', { noremap = true, silent = true })

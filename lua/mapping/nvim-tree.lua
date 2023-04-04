vim.api.nvim_set_keymap('n', '<C-f>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-f>', ':<C-U>NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-f>', '<Esc>:NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<C-f>', '<C-C>:NvimTreeToggle<CR>', { noremap = true, silent = true })

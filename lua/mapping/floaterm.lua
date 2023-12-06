vim.api.nvim_set_keymap('n', '<c-t>', ':FloatermToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<c-t>', '<Esc>:FloatermToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<c-t>', '<C-\\><C-n>:FloatermToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-n>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-B>' , ':FloatermNew --autoclose=0 build.sh<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<c-B>' , '<Esc>:FloatermNew --autoclose=0 build.sh<CR>', {noremap = true, silent = true})


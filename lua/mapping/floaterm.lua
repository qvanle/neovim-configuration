vim.api.nvim_set_keymap('n', '<c-t>', ':FloatermNew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<c-t>', '<Esc>:FloatermNew<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<c-b>' , ':FloatermNew make<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<c-b>' , '<Esc>:FloatermNew make<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<C-z>", "<C-\\><C-n>:FloatermKill!<CR>", { noremap = true, silent = true })

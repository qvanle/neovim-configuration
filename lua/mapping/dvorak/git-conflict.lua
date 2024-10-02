vim.api.nvim_set_keymap('n', '\'`', '<Plug>(git-conflict-none)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '\'1', '<Plug>(git-conflict-ours)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '\'2', '<Plug>(git-conflict-theirs)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '\'3', '<Plug>(git-conflict-both)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>x', '<Plug>(git-conflict-next-conflict)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>X', '<Plug>(git-conflict-prev-conflict)<CR>', { noremap = true, silent = true })


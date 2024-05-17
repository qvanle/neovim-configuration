local api = vim.api

-- map i to get into insert mode (left of the cursor) 
api.nvim_set_keymap('n', 'i', '<Cmd>lua vim.api.nvim_feedkeys("i", "n", false)<CR>', { noremap = true, silent = true })
-- map a to get into insert mode (right of the cursor)
api.nvim_set_keymap('n', 'a', '<Cmd>lua vim.api.nvim_feedkeys("a", "n", false)<CR>', { noremap = true, silent = true })

-- map vv to get into Visual Mode
api.nvim_set_keymap('n', 'kk', '<Cmd>lua vim.api.nvim_feedkeys("v", "n", false)<CR>', { noremap = true, silent = true })
-- map VV to get into Visual Line Mode 
api.nvim_set_keymap('n', 'KK', '<Cmd>lua vim.api.nvim_feedkeys("V", "n", false)<CR>', { noremap = true, silent = true })
-- map vV to get into Visual Block Mode
api.nvim_set_keymap('n', '<c-K>', '<Cmd>lua vim.api.nvim_feedkeys("<C-v>", "n", false)<CR>', { noremap = true, silent = true })
-- map ESC to get into normal mode 
api.nvim_set_keymap('v', '<Esc>', '<Esc>', {noremap = true, silent = true})

api.nvim_set_keymap('n', 'ZZ', '<Cmd>q!<CR>', {noremap = true, silent = true})

api.nvim_set_keymap('n', '<C-.>', '<Cmd>bd!<CR>', {noremap = true, silent = true})

api.nvim_set_keymap('n', '<C-o>', '<Cmd>wa!<CR><Cmd>lua print "Saved!"<CR>', {noremap = true, silent = true})
api.nvim_set_keymap('i', '<C-o>', '<Esc><Cmd>wa!<CR><Cmd>lua print "Saved!"<CR>', {noremap = true, silent = true})

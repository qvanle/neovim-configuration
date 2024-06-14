local api = vim.api

local myfunc = {}

myfunc.replace1 = function()
    api.nvim_feedkeys('r', 'n', false)
end

myfunc.replace2 = function()
    api.nvim_feedkeys('R', 'n', false)
end

api.nvim_set_keymap('n', 'i', '<Cmd>lua vim.api.nvim_feedkeys("i", "n", false)<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'a', '<Cmd>lua vim.api.nvim_feedkeys("a", "n", false)<CR>', { noremap = true, silent = true })

api.nvim_set_keymap('n', 'kk', '<Cmd>lua vim.api.nvim_feedkeys("v", "n", false)<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'KK', '<Cmd>lua vim.api.nvim_feedkeys("V", "n", false)<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', '<c-K>', '<Cmd>lua vim.api.nvim_feedkeys("<C-v>", "n", false)<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('v', '<Esc>', '<Esc>', {noremap = true, silent = true})

api.nvim_set_keymap('n', 'ZZ', '<Cmd>q!<CR>', {noremap = true, silent = true})

api.nvim_set_keymap('n', '<C-.>', '<Cmd>bd!<CR>', {noremap = true, silent = true})

api.nvim_set_keymap('n', '<C-o>', '<Cmd>wa!<CR><Cmd>lua print "Saved!"<CR>', {noremap = true, silent = true})
api.nvim_set_keymap('i', '<C-o>', '<Esc><Cmd>wa!<CR><Cmd>lua print "Saved!"<CR>', {noremap = true, silent = true})

api.nvim_set_keymap('n', 'p', '<Cmd>lua vim.g.moding.replace1()<CR>', {noremap = true, silent = true})
api.nvim_set_keymap('n', 'P', '<Cmd>lua vim.g.moding.replace2()<CR>', {noremap = true, silent = true})
vim.g.moding = myfunc

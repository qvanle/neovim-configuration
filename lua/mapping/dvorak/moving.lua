local api = vim. api
-- map d to move left 
-- map s to move right 
-- map h to move down 
-- map t to move up
api.nvim_set_keymap('n', 'd', '<left>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'n', '<right>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'h', '<down>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 't', '<up>', { noremap = true, silent = true })

-- map , to move 1 word (at the begin of the word)
-- map . to move 1 word (at the end of the word) 
-- map x to move back 1 word (at the begin of the word)
-- map gg to the begin of the file 
-- map GG to the end of the file 
-- map gG to the middle of the file



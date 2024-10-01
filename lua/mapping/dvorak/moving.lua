local api = vim.api

local myfunc = {}

myfunc.move_ForBegWord = function()
    api.nvim_command('normal! w')
end
myfunc.move_ForEndWord = function()
    api.nvim_command('normal! e')
end
myfunc.move_BackBegWord = function()
    api.nvim_command('normal! b')
end
myfunc.move_BackEndWord = function()
    api.nvim_command('normal! ge')
end
myfunc.move_BeginFile = function()
    api.nvim_command('normal! gg')
    api.nvim_command('normal! ^')
end
myfunc.move_EndFile = function()
    api.nvim_command('normal! G')
    api.nvim_command('normal! ^')
end
myfunc.move_ForChar = function()
    api.nvim_command('normal! f')
end
myfunc.move_BackChar = function()
    api.nvim_command('normal! F')
end
myfunc.move_ForPara = function()
    api.nvim_command('normal! }')
end
myfunc.move_BackPara = function()
    api.nvim_command('normal! {')
end
myfunc.move_EndLine = function()
    api.nvim_command('normal! $')
end
myfunc.move_BeginLine = function()
    api.nvim_command('normal! 0')
end
myfunc.move_StartIndent = function()
    api.nvim_command('normal! ^')
end
myfunc.findNext = function()
    api.nvim_command('normal! n')
end 
myfunc.findPrev = function()
    api.nvim_command('normal! N')
end

api.nvim_set_keymap('n', 'd', '<left>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'n', '<right>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'h', '<down>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 't', '<up>', { noremap = true, silent = true })
-- alt + dnht to move in insert mode 
api.nvim_set_keymap('i', '<M-d>', '<left>', { noremap = true, silent = true })
api.nvim_set_keymap('i', '<M-n>', '<right>', { noremap = true, silent = true })
api.nvim_set_keymap('i', '<M-h>', '<down>', { noremap = true, silent = true })
api.nvim_set_keymap('i', '<M-t>', '<up>', { noremap = true, silent = true })


api.nvim_set_keymap('n', 'b', ':lua vim.g.moving.move_ForBegWord()<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'm', ':lua vim.g.moving.move_ForEndWord()<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'B', ':lua vim.g.moving.move_BackBegWord()<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'M', ':lua vim.g.moving.move_BackEndWord()<CR>', { noremap = true, silent = true })

api.nvim_set_keymap('n', 'gg', ':lua vim.g.moving.move_BeginFile()<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'GG', ':lua vim.g.moving.move_EndFile()<CR>', { noremap = true, silent = true })

api.nvim_set_keymap('n', '0', ':lua vim.g.moving.move_BeginLine()<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', '$', ':lua vim.g.moving.move_EndLine()<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', '^', ':lua vim.g.moving.move_StartIndent()<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 's', '/', { noremap = true})
api.nvim_set_keymap('n', '<C-n>', ':lua vim.g.moving.findNext()<CR>', { noremap = true})
api.nvim_set_keymap('n', '<C-p>', ':lua vim.g.moving.findPrev()<CR>', { noremap = true})


vim.g.moving = myfunc

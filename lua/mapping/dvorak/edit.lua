local function remove_line()
    local buf = vim.api.nvim_get_current_buf()
    local row = vim.api.nvim_win_get_cursor(0)[1] - 1
    vim.api.nvim_buf_set_lines(buf, row, row + 1, false, {})
end

local function add_line_below()
    local buf = vim.api.nvim_get_current_buf()
    local row = vim.api.nvim_win_get_cursor(0)[1]
    vim.api.nvim_buf_set_lines(buf, row, row, true, { '' })
end

local function add_line_above()
    local buf = vim.api.nvim_get_current_buf()
    local row = vim.api.nvim_win_get_cursor(0)[1] - 1
    vim.api.nvim_buf_set_lines(buf, row, row, true, { '' })
end

local function duplicate_line()
    local buf = vim.api.nvim_get_current_buf()
    local row = vim.api.nvim_win_get_cursor(0)[1] - 1
    local line = vim.api.nvim_buf_get_lines(buf, row, row + 1, false)[1]
    vim.api.nvim_buf_set_lines(buf, row, row, true, { line })
end

local function mcopy()
    vim.api.nvim_command('normal! y')
end
local function mcopyToClipboard()
    vim.api.nvim_command('normal! "+y')
end
local function mcopyLine()
    vim.api.nvim_command('normal! yy')
end
local function mcopyLineToClipboard()
    vim.api.nvim_command('normal! "+yy')
end
local function mpaste()
    vim.api.nvim_command('normal! p')
end
local function mpasteFromClipboard()
    vim.api.nvim_command('normal! "+p')
end
local function mcut()
    vim.api.nvim_command('normal! d')
end
local function eraseChar()
    vim.api.nvim_command('normal! x')
end

vim.g.edit = {
    remove_line = remove_line,
    duplicate_line = duplicate_line,
    add_line_below = add_line_below,
    add_line_above = add_line_above,
    mcopy = mcopy,
    mcopyLine = mcopyLine,
    mpaste = mpaste,
    eraseChar = eraseChar,
    mcopyToClipboard = mcopyToClipboard,
    mpasteFromClipboard = mpasteFromClipboard,
    mcopyLineToClipboard = mcopyLineToClipboard,
    mcut = mcut
}

vim.api.nvim_set_keymap('n', '<C-S-E>', '<cmd>lua vim.g.edit.duplicate_line()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-S-E>', '<cmd>lua vim.g.edit.duplicate_line()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-e>', '<cmd>lua vim.g.edit.remove_line()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-e>', '<cmd>lua vim.g.edit.remove_line()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'o', '<cmd>lua vim.g.edit.add_line_below()<CR><Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-O>', '<cmd>lua vim.g.edit.add_line_above()<CR><Up>', { noremap = true, silent = true })

-- <C-;> to undo <C-:> to redo
vim.api.nvim_set_keymap('n', '<C-;>', '<cmd>undo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-:>', '<cmd>redo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-;>', '<cmd>undo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-:>', '<cmd>redo<CR>', { noremap = true, silent = true })



-- <leader>nh to remove search highlight
vim.api.nvim_set_keymap('n', '<leader>nh', '<cmd>noh<CR>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', 'cc', '<cmd>lua vim.g.edit.mcopyLine()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'c', '<cmd>lua vim.g.edit.mcopy()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'CC', '<cmd>lua vim.g.edit.mcopyLineToClipboard()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'C', '<cmd>lua vim.g.edit.mcopyToClipboard()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'v', '<cmd>lua vim.g.edit.mpaste()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'V', '<cmd>lua vim.g.edit.mpasteFromClipboard()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'x', '<cmd>lua vim.g.edit.eraseChar()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'x', '<cmd>lua vim.g.edit.mcut()<CR>', { noremap = true, silent = true })

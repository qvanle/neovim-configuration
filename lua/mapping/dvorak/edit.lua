local function remove_line()
    local buf = vim.api.nvim_get_current_buf()
    local row = vim.api.nvim_win_get_cursor(0)[1] - 1
    vim.api.nvim_buf_set_lines(buf, row, row + 1, false, {})
end

local function add_line_below()
    local buf = vim.api.nvim_get_current_buf()
    local row = vim.api.nvim_win_get_cursor(0)[1]
    vim.api.nvim_buf_set_lines(buf, row, row, true, {''})
end

local function add_line_above()
    local buf = vim.api.nvim_get_current_buf()
    local row = vim.api.nvim_win_get_cursor(0)[1] - 1
    vim.api.nvim_buf_set_lines(buf, row, row, true, {''})
end

local function duplicate_line()
    local buf = vim.api.nvim_get_current_buf()
    local row = vim.api.nvim_win_get_cursor(0)[1] - 1
    local line = vim.api.nvim_buf_get_lines(buf, row, row + 1, false)[1]
    vim.api.nvim_buf_set_lines(buf, row, row, true, {line})
end

vim.g.edit = {
    remove_line = remove_line,
    duplicate_line = duplicate_line,
    add_line_below = add_line_below,
    add_line_above = add_line_above
}

vim.api.nvim_set_keymap('n', '<C-e>', '<cmd>lua vim.g.edit.duplicate_line()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-e>', '<cmd>lua vim.g.edit.duplicate_line()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-S-E>', '<cmd>lua vim.g.edit.remove_line()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-S-E>', '<cmd>lua vim.g.edit.remove_line()<CR>', { noremap = true, silent = true})

vim.api.nvim_set_keymap('n', 'o', '<cmd>lua vim.g.edit.add_line_below()<CR><Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-O>', '<cmd>lua vim.g.edit.add_line_above()<CR><Up>', { noremap = true, silent = true })

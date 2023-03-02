-- file explorer
vim.keymap.set('n', '<C-f>', ":NvimTreeFindFileToggle<CR>", {silent = true})
vim.keymap.set('i', '<C-f>', "<esc>:NvimTreeFindFileToggle<CR>", {silent = true})



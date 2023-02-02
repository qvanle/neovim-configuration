
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.number = true

vim.opt.clipboard = unnamedplus

vim.opt.wrap = false 

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.mouse = nil 

vim.opt.termguicolors = true

vim.opt.signcolumn = 'yes'

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.errorformat:append('%f|%l col %c|%m')

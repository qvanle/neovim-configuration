# neovim-configuration

## install
#### require fzf
## Basic config
#### vim.opt.backspace = '2'
#### vim.opt.showcmd = true
#### vim.opt.laststatus = 2
#### vim.opt.autowrite = true
#### vim.opt.cursorline = true
#### vim.opt.autoread = true
#### vim.opt.number = true
#### vim.opt.clipboard = unnamedplus
#### vim.opt.wrap = false 
#### vim.opt.tabstop = 4
#### vim.opt.shiftwidth = 4
#### vim.opt.softtabstop = 0
#### vim.opt.expandtab = true
#### vim.opt.autoindent = true
#### vim.opt.mouse = nil 
#### vim.opt.termguicolors = true
#### vim.opt.signcolumn = 'yes'
#### vim.g.loaded_netrw = 1
#### vim.g.loaded_netrwPlugin = 1
#### vim.opt.errorformat:append('%f|%l col %c|%m')
## plugin
#### wbthomason/packer.nvim
packer management
#### ellisonleao/gruvbox.nvim
retro groove color schemes
#### nvim-tree/nvim-tree.lua
file explorer
#### nvim-tree/nvim-web-devicons
provides icons
#### nvim-lualine/lualine.nvim
status line 
#### nvim-treesitter/nvim-treesitter
language parsers
#### nvim-lua/plenary.nvim
support more neovim command
#### nvim-telescope/telescope.nvim
highly extendable fuzzy finder over lists
#### nvim-telescope/telescope-fzf-native.nvim 
support calculating the score for fzf 
#### mbbill/undotree
undo tree 
#### akinsho/toggleterm.nvim
terminal
#### j-morano/buffer_manager.nvim
buffer management
#### folke/which-key.nvim
display key bindings
#### windwp/nvim-ts-autotag
auto complete HTML/XML tag
#### ray-x/web-tools.nvim
a tool kits for web developer
## shortcut
#### global 
vim.g.mapleader = ' '

vim.g.maplocalleader = ' '

#### basic move in insert mode
\<Alt-h>: move left in insert mode

\<Alt-j>: move down in insert mode

\<Alt-k>: move up in insert mode 

\<Alt-l>: move right in insert mode

#### save file
\<Ctrl-s>: save all open buffer (only insert and normal mode)

#### undo and redo 
\<Alt-z>: undo 

\<Alt-y>: redo

#### save and quit
\<Alt-Z><Alt-Z>: save all open buffer and quit neovim 

#### close buffer 
\<Alt-q>: close recent buffer (only insert mode and normal mode) 

#### turn off highlight when searching 
\<Alt-F>: unhighlight of searching


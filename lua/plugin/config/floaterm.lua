local g = vim.g

g.floaterm_wintype = "float"
g.floaterm_width = 0.9
g.floaterm_height = 0.4
g.floaterm_position = 'bottom'
g.floaterm_wintitle = 0
g.floaterm_shell = 'zsh'
g.floaterm_title = "TERM<3"
g.floaterm_titleposition = 'center'
vim.g.floaterm_transparency = 50

-- floaterm_custom.lua

-- Create an autocmd to run 'source ~/.zshrc' when Floaterm opens
vim.api.nvim_create_augroup("FloatermAutoSource", { clear = true })

vim.api.nvim_create_autocmd("User", {
  group = "FloatermAutoSource",
  pattern = "FloatermCreate",
  callback = function()
    -- Send the 'source ~/.zshrc' command to the current terminal buffer
    local bufnr = vim.fn.bufnr('%')
    vim.fn["floaterm#terminal#send"](bufnr, { "source ~/.zshrc && clear" })
  end,
})


-- rename variable
vim.keymap.set("n", "<leader>ren", function()
  return ":Ren " .. vim.fn.expand("<cword>")
end, { expr = true })


-- CMake 
vim.keymap.set('n', '<leader>crn', ':CMakeBuild CMAKE')

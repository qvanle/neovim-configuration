vim.g.CONFIG_PATH = vim.fn.expand("~/.config/nvim/")

file = require("src.file")

file.sourceFolder("format")
file.sourceFolder("plugin")
file.sourceFolder("mapping")

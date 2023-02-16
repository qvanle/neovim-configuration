require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "bash",
		"comment",
		"css",
		"html",
		"javascript",
		"jsdoc",
		"jsonc",
		"lua",
		"markdown",
		"regex",
		"scss",
		"toml",
		"typescript",
		"yaml",
        "c",
    },

    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}


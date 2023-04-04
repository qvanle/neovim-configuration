require ("nvim-web-devicons").setup()

require("nvim-tree").setup({
    hijack_cursor = true,
    sync_root_with_cwd = true,
    sort_by = "extension",
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
    view = {
        width = 30,
        cursorline = true
    },
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
})

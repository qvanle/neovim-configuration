telescope = require('telescope')

telescope.load_extension('fzf')

telescope.setup{
    defaults = {
        prompt_prefix = ">> ",
        selection_caret = ">> ",
        previewer = true,
        layout_strategy = 'horizontal',
        layout_config = {
            prompt_position = 'bottom',
            horizontal = {
                preview_width = 0.55,
                results_width = 0.8,
            },
            vertical = {
                preview_height = 0.5,
            },
        },
        file_ignore_patterns = {"node_modules/*", ".git/*"},

    },
    pickers = {
        find_files = {
            extensions = {"md", "txt", "org"},
            prompt_prefix = "Find file: ",
            hidden = true,
            layout_strategy = "vertical",
            sorting_strategy = "ascending",
            -- Use the fzf extension
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case"
            },
        },
        buffer = {
            extensions = {"md", "txt", "org"},
            prompt_prefix = "Buffer: ",
            hidden = true,
            layout_strategy = "vertical",
            sorting_strategy = "ascending",
            -- Use the fzf extension
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case"
            },
        },
        grep_string = {
            prompt_prefix = "Grep string: ",
            only_sort_text = true,
            layout_strategy = "vertical",
            sorting_strategy = "ascending",
            -- Use the fzf extension
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case"
            },
        },

        live_grep = {
            prompt_prefix = "Live grep: ",
            only_sort_text = true,
            layout_strategy = "vertical",
            grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
            sorting_strategy = "ascending",
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = "smart_case"
            },
        },
    }
}

require('telescope').setup {
    defaults = {
        file_ignore_patterns = {},
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--no-ignore',
            '--hidden',
            '--follow',
        },
    },
    pickers = {
        find_files = {
            hidden = true,
            follow = true,
        },
    },
}

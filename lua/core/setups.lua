vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

require("lualine").setup({
    options = {
        component_separators = " ",
        section_separators = { left = "", right = "" },
    },
})

require("nvim-autopairs").setup()

require("gitsigns").setup()

require("ibl").setup({
    indent = { char = "┊" },
    scope = { enabled = false },
})

require("colorizer").setup()
require("todo-comments").setup()

vim.cmd("packadd cfilter")

vim.cmd([[
call deoplete#custom#var('omni', 'input_patterns', {
    \ 'tex': g:vimtex#re#deoplete
    \})
    ]])

require('mini.surround').setup()
require("oil").setup({
    view_options = {
        show_hidden = true,
    }
})

require('obsidian').setup({
    workspaces = {
        {
            name = "personal",
            path = "~/valley of riches/",
        }
    },

    notes_subdir = "Notes",
    new_notes_location = "notes_subdir",

    templates = {
        folder = "999- Templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
    },

    disable_frontmatter = true,
})


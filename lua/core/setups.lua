require("alpha").setup(require("alpha.themes.startify").config)
require("alpha.themes.dashboard").section.footer.val = require("alpha.fortune")() 

require("everforest").setup({
    italics = true,
})

require("lualine").setup({
    options = {
        theme = "everforest",
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

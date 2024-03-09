require("earthi.remap")
require("earthi.set")
require'nvim-treesitter.configs'.setup { indent = { enable = true }, }
vim.api.nvim_set_option("clipboard","unnamed")

vim.cmd[[colorscheme catppuccin]]
vim.cmd[[packloadall]]

print("rawrrr")

require("earthi.remap")
require("earthi.set")
require'nvim-treesitter.configs'.setup { indent = { enable = true }, }

vim.opt.clipboard:append("unnamedplus")

vim.cmd[[colorscheme catppuccin]]
vim.cmd[[packloadall]]

print("rawrrr")

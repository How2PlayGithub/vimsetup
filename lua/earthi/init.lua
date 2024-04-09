require("earthi.remap")
require("earthi.set")
require'nvim-treesitter.configs'.setup { indent = { enable = true }, }

vim.opt.clipboard:append("unnamedplus")

vim.o.selection = 'exclusive'

vim.cmd[[colorscheme catppuccin]]
vim.cmd[[packloadall]]

vim.cmd("autocmd FileType javascript highlight link TypescriptError Normal")

print("rawrrr")

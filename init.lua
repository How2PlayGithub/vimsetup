opt = vim.opt
g = vim.g
kmap = vim.keymap
cmd = vim.cmd

g.mapleader = " "

require("core.lazy")
require("core.plugins")

require("core.settings")
require("core.setups")
require("core.mappings")
require("core.scripts")

require("plugins.mason")
require("plugins.nvim-cmp")
require("plugins.treesitter")
require("plugins.conform")
require("plugins.gitsigns-config")
require("plugins.telescope")
require("plugins.snacks")
require("plugins.screenkey")
require("plugins.pomo")

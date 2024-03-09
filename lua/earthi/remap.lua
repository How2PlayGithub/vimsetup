vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "<C-c>", "<Esc>")

local builtin = require 'telescope.builtin'
vim.keymap.set("n", "<leader>sh", builtin.help_tags, {desc = '[S]earch [H]elp'})

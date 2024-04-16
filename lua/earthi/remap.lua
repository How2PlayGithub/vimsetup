require('earthi.functions')

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.api.nvim_set_keymap('n', '<leader>c', ':lua switch_windows()<CR>', { noremap = true })

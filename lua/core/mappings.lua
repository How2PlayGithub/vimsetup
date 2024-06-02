kmap.set("n", "U", "<C-r>")

kmap.set("n", "<leader>pv", vim.cmd.Ex)
kmap.set("i", "<C-c>", "<Esc>")

kmap.set("n", "<c-h>", "<c-w>h")

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
kmap.set("n", "<leader>a", mark.add_file)
kmap.set("n", "<C-e>", ui.toggle_quick_menu)

kmap.set("n", "<C-j>", function() ui.nav_file(1) end)
kmap.set("n", "<C-k>", function() ui.nav_file(2) end)
kmap.set("n", "<C-l>", function() ui.nav_file(3) end)
kmap.set("n", "<C-;>", function() ui.nav_file(4) end)

local builtin = require("telescope.builtin")

kmap.set("n", "<leader>ff", builtin.find_files, {})
kmap.set("n", "<leader>fg", builtin.live_grep, {})
kmap.set("n", "<leader>fb", builtin.buffers, {})
kmap.set("n", "<leader>fh", builtin.help_tags, {})

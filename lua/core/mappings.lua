kmap.set("n", "U", "<C-r>")

kmap.set("n", "<leader>pv", vim.cmd.Oil, { desc = "File View" })
kmap.set("i", "<C-c>", "<Esc>")

kmap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Undo Tree" })

kmap.set("n", "<C-d>", "<C-d>zz")
kmap.set("n", "<C-u>", "<C-u>zz")
kmap.set("n", "<C-f>", "<C-f>zz")
kmap.set("n", "<C-b>", "<C-b>zz")

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
kmap.set("n", "<leader>a", mark.add_file, { desc = "Add to Harpoon" })
kmap.set("n", "<C-e>", ui.toggle_quick_menu)

kmap.set("n", "<C-h>", function() ui.nav_file(1) end)
kmap.set("n", "<C-j>", function() ui.nav_file(2) end)
kmap.set("n", "<C-k>", function() ui.nav_file(3) end)
kmap.set("n", "<C-l>", function() ui.nav_file(4) end)

local builtin = require("telescope.builtin")

kmap.set("n", "<leader>fm", builtin.marks, { desc = "Find Marks" })

kmap.set("n", "<leader>td", vim.cmd.Td, {silent = true, desc = "Todo List"})

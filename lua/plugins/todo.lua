return{
    "How2PlayGithub/todo.nvim",
    config = function()
        require("todo").setup({ targetFile = "~/Documents/todo.md" })
    end
}

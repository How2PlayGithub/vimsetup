require("conform").setup({
    formatters_by_ft = {
        ["*"] = { "codespell" },
        ["_"] = { "trim_whitespace" },
        python = { "black" },
        cpp = { "clang-format" }
    },
    format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500,
    }
})

require("conform").formatters.shfmt = {
    prepend_args = function(ctx)
        return { "--indent", tostring(vim.bo[ctx.buf].shiftwidth) }
    end
}

require("conform").formatters["clang-format"] = {
    prepend_args = function(ctx)
        return { "--style={BasedOnStyle: Google, IndentWidth: 4}" }
    end
}

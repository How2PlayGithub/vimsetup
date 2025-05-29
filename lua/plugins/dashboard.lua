return {
    "goolord/alpha-nvim",
    requires = {"kyazdani42/nvim-web-devicons"},
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        math.randomseed(os.time())

        local function footer()
            local total_plugins = #vim.tbl_keys(require("lazy.core.config").plugins)
            local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
            local version = vim.version()
            local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

            return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
        end

        local logo = {
            "",
            "",
            "",
            "        ████                      ████          ",
            "      ██░░░░██                  ██░░░░██        ",
            "      ██░░░░██                  ██░░░░██        ",
            "    ██░░░░░░░░██████████████████░░░░░░░░██      ",
            "    ██░░░░░░░░▓▓▓▓░░▓▓▓▓▓▓░░▓▓▓▓░░░░░░░░██      ",
            "    ██░░░░░░░░▓▓▓▓░░▓▓▓▓▓▓░░▓▓▓▓░░░░░░░░██      ",
            "  ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██    ",
            "  ██░░██░░░░████░░░░░░░░░░░░░░████░░░░██░░██    ",
            "  ██░░░░██░░████░░░░░░██░░░░░░████░░██░░░░██    ",
            "██░░░░██░░░░░░░░░░░░██████░░░░░░░░░░░░██░░░░██  ",
            "██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██  ",
            "██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██  ",
            "██▓▓▓▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▓▓▓██  ",
            "██▓▓▓▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▓▓▓██  ",
            "██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██  ",
            "",
            "",
        }

        dashboard.section.header.val = logo

        vim.api.nvim_set_hl(0, "BbBlue", { fg = "#89CFF0" })
        dashboard.section.header.opts.hl = "BbBlue"

        dashboard.section.buttons.val = {
            dashboard.button("<␣>pv", "  File Explorer"),
            dashboard.button("<␣>ff", "  Find File"),
            dashboard.button("<␣>/", "  Find Word"),
            dashboard.button("u", "  Update", ":Lazy update<cr>"),
            dashboard.button("q", "  Quit", ":qa<cr>")
        }

        dashboard.section.footer.val = footer()
        dashboard.section.footer.opts.hl = "Constant"

        alpha.setup(dashboard.opts)

        vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
    end
}

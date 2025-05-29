return {
    -- UI stuff ig
    "folke/tokyonight.nvim",
    "nvim-lualine/lualine.nvim",
    "norcalli/nvim-colorizer.lua",
    "lukas-reineke/indent-blankline.nvim",
    "hiphish/rainbow-delimiters.nvim",

    -- Startup
    require("plugins/dashboard"),

    -- File Managing
    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        lazy = false,
    },
    "Theprimeagen/harpoon",

    -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "smartpde/telescope-recent-files",
            "tom-anders/telescope-vim-bookmarks.nvim",
            "BurntSushi/ripgrep"
        }
    },

    -- Treesitter
    "nvim-treesitter/nvim-treesitter",

    -- LSP stuff
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    -- Autocomplete
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
        }
    },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },
    "Shougo/deoplete.nvim",

    -- Obsidian
    require("plugins.render-markdown"),
    require("plugins.obsidian"),

    -- VimTex
    {
        "lervag/vimtex",
        lazy = false,
        init = function()
            g.vimtex_view_method = 'zathura'
            g.vimtex_compiler_method = 'latexrun'
        end
    },

    -- Utils
    require("plugins.todo"),
    "epwalsh/pomo.nvim",

    "mbbill/undotree",
    "stevearc/conform.nvim",
    "windwp/nvim-autopairs",
    "alvan/vim-closetag",
    { 'echasnovski/mini.surround', version = false },

    "lewis6991/gitsigns.nvim",
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    "lervag/vimtex",
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    require("plugins.which-key"),
    require("plugins.snacks"),
    require("plugins.flash"),

    "Theprimeagen/vim-be-good",
    {
        "NStefan002/screenkey.nvim",
        lazy = false,
        version = "*",
    },
}



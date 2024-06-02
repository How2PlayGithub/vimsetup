return {
    {
        "neanias/everforest-nvim",
        lazy = false,
        priority = 1000,
    },

    "goolord/alpha-nvim",
    "nvim-lualine/lualine.nvim",

    "mbbill/undotree",
    "stevearc/conform.nvim",

    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
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
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "smartpde/telescope-recent-files",
            "tom-anders/telescope-vim-bookmarks.nvim"
        }
    },

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    "windwp/nvim-autopairs",
    "alvan/vim-closetag",
    "lukas-reineke/indent-blankline.nvim",
    "norcalli/nvim-colorizer.lua",
    "lewis6991/gitsigns.nvim",
    "hiphish/rainbow-delimiters.nvim",
    "Theprimeagen/harpoon",

    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    }
}

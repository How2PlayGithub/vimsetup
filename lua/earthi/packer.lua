vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- packer setup
    use 'wbthomason/packer.nvim'
    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- theme
    use { "catppuccin/nvim", as = "catppuccin" }
    -- treesitter <3
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,}
    use("nvim-treesitter/playground")
    -- fast file jump
    use("ThePrimeagen/harpoon")
    -- undotree
    use("mbbill/undotree")
    -- lsp setup
    use("VonHeikemen/lsp-zero.nvim")
    use("tpope/vim-fugitive")
    use("neovim/nvim-lspconfig")
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("saadparwaiz1/cmp_luasnip")
    use("hrsh7th/cmp-nvim-lua")
    use("L3MON4D3/LuaSnip")
    use("rafamadriz/friendly-snippets")
    require("luasnip.loaders.from_vscode").lazy_load()

    use {'neoclide/coc.nvim', branch = 'release'}
    use("neoclide/coc-pairs")

    use {
        'nmac427/guess-indent.nvim',
        config = function() require('guess-indent').setup {} end,
    }
    use("prettier/vim-prettier")

    use {"ellisonleao/carbon-now.nvim", config = function() require('carbon-now').setup() end}

    use('ThePrimeagen/vim-be-good')

    -- multiline editing
    use('mg979/vim-visual-multi')

    -- see keys
    use('jokajak/keyseer.nvim')

    -- codeium
    use('jcdickinson/codeium.nvim')
end)

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { "catppuccin/nvim", as = "catppuccin" }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,}
    use("nvim-treesitter/playground")
    use("ThePrimeagen/harpoon")
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

    use {'neoclide/coc.nvim', branch = 'release'}
    use("neoclide/coc-pairs")

    use {
        'nmac427/guess-indent.nvim',
        config = function() require('guess-indent').setup {} end,
    }
    use("prettier/vim-prettier")

    use {
    "ellisonleao/carbon-now.nvim",
    config = function()
        local carbon = require('carbon-now')
        carbon.setup({
            options = {
                    theme = 'Duotone',
            }
        })
    end
}

end)

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'rstacruz/vim-closer'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use "rebelot/kanagawa.nvim"
    use "nvim-lua/plenary.nvim"
    use "ThePrimeagen/harpoon"
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.4'}
    use 'mbbill/undotree'
    use("nvim-treesitter/nvim-treesitter-context")
    use {
        'hrsh7th/nvim-cmp', requires = {
        "hrsh7th/cmp-buffer",           -- source for text in buffer
        "hrsh7th/cmp-path",             -- source for file system paths
        "L3MON4D3/LuaSnip",             -- snippet engine
        "saadparwaiz1/cmp_luasnip",     -- for autocompletion
        "rafamadriz/friendly-snippets", -- useful snippets
    }
}
    use {
        'williamboman/mason.nvim', requires = {
            'williamboman/mason-lspconfig.nvim'
        }
    }
    use {
        "neovim/nvim-lspconfig", requires = {
            "hrsh7th/cmp-nvim-lsp"
        }
    }
    use {
        "windwp/nvim-ts-autotag", config = function()
            require('nvim-ts-autotag').setup()
        end
    }
end)

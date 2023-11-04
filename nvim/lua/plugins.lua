
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
  end)

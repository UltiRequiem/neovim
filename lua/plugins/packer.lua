return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {"folke/todo-comments.nvim"}
    use {"nvim-lua/plenary.nvim"}
    use {'nvim-lua/popup.nvim'}
    use {"glepnir/dashboard-nvim", opt= true}
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-telescope/telescope-fzy-native.nvim'},
            {'nvim-telescope/telescope-node-modules.nvim'},
            {'nvim-telescope/telescope-cheat.nvim'},
            {'nvim-telescope/telescope-packer.nvim'},
            {'nvim-telescope/telescope-media-files.nvim'}
        }
    }
    use "folke/lua-dev.nvim"
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {'hrsh7th/nvim-compe'}
    use 'neovim/nvim-lspconfig'
    use {'folke/tokyonight.nvim'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
end, {display = {open_fn = require('packer.util').float}})

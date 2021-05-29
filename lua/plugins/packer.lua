return require("packer").startup(function()
    use {'neoclide/coc.nvim'}
    use {"wbthomason/packer.nvim"}
    use {"kyazdani42/nvim-web-devicons"}
    use {"nvim-lua/plenary.nvim"}
    use {"nvim-lua/popup.nvim"}
    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            {"nvim-telescope/telescope-fzy-native.nvim"},
            {"nvim-telescope/telescope-media-files.nvim"}
        }
    }
    use 'eddyekofo94/gruvbox-flat.nvim'
end)

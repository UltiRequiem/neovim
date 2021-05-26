return require("packer").startup(
  function()
    use {"wbthomason/packer.nvim"}
    use {"UltiRequiem/nvim-snippets"}
    use {"kyazdani42/nvim-tree.lua"}
    use {"kyazdani42/nvim-web-devicons"}
    use {"folke/todo-comments.nvim"}
    use {"nvim-lua/plenary.nvim"}
    use {"nvim-lua/popup.nvim"}
    use {"glepnir/dashboard-nvim"}
    use {"lewis6991/gitsigns.nvim"}
    use {"windwp/nvim-autopairs"}
    use {"phaazon/hop.nvim"}
    use {"SirVer/ultisnips"}
    use {"folke/trouble.nvim"}
    use {
      "nvim-telescope/telescope.nvim",
      requires = {
        {"nvim-telescope/telescope-fzy-native.nvim"},
        {"nvim-telescope/telescope-media-files.nvim"}
      }
    }
    use {"folke/lua-dev.nvim"}
    use {"hoob3rt/lualine.nvim"}
    use {"hrsh7th/nvim-compe"}
    use {"neovim/nvim-lspconfig"}
    use {"folke/tokyonight.nvim"}
    use {"nvim-treesitter/nvim-treesitter"}
    use {"ahmedkhalf/lsp-rooter.nvim"}
  end
)

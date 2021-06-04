return require("packer").startup(
function()
  use {"wbthomason/packer.nvim"}
  use {'tjdevries/gruvbuddy.nvim'}
  use {'UltiRequiem/blinds-nvim.lua'}
  use {"folke/lua-dev.nvim"}
  use {"neoclide/coc.nvim"}
  use {"hoob3rt/lualine.nvim"}
  use {"tjdevries/colorbuddy.nvim"}
  use {"phaazon/hop.nvim"}
  use {"kyazdani42/nvim-tree.lua"}
  use {"kyazdani42/nvim-web-devicons"}
  use {"glepnir/dashboard-nvim"}
  use {"nvim-lua/plenary.nvim"}
  use {"nvim-lua/popup.nvim"}
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      {"nvim-telescope/telescope-fzy-native.nvim"},
      {"nvim-telescope/telescope-media-files.nvim"},
   }
  }
end
)

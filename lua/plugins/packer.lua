return require("packer").startup(
function()
  use {"wbthomason/packer.nvim"}
  use {"neoclide/coc.nvim"}
  use {"hoob3rt/lualine.nvim"}
  use {"tjdevries/colorbuddy.nvim"}
  use {"phaazon/hop.nvim"}
  use {"kyazdani42/nvim-tree.lua"}
  use {"kyazdani42/nvim-web-devicons"}
  use {"glepnir/dashboard-nvim"}
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      {"nvim-telescope/telescope-fzy-native.nvim"},
      {"nvim-telescope/telescope-media-files.nvim"},
      {"nvim-lua/plenary.nvim"},
      {"nvim-lua/popup.nvim"}
    }
  }
end
)

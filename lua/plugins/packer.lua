return require('packer').startup(function()
  use {'wbthomason/packer.nvim'}
  use {'kyazdani42/nvim-tree.lua',requires = {'kyazdani42/nvim-web-devicons', opt= true}}
  use {"folke/todo-comments.nvim",requires = "nvim-lua/plenary.nvim",}
  use {"glepnir/dashboard-nvim"}
  use {
  'nvim-telescope/telescope.nvim',
  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'},{'nvim-telescope/telescope-fzy-native.nvim'},{'nvim-telescope/telescope-node-modules.nvim'},{'nvim-telescope/telescope-cheat.nvim'},{'nvim-telescope/telescope-packer.nvim'},{'nvim-telescope/telescope-media-files.nvim'}}
}
use "folke/lua-dev.nvim"
use {
  'hoob3rt/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
}
use {'folke/tokyonight.nvim'}
end, {
  display = {
    open_fn = require('packer.util').float,
  }
})

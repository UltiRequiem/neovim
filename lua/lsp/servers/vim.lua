-- npm install -g vim-language-server
require "lspconfig".vimls.setup {
  cmd = {"vim-language-server", "--stdio"},
  filetypes = {"vim"},
  on_attach = require "lsp.utils".common_on_attach,
  init_options = {
    diagnostic = {
      enable = true
    },
    indexes = {
      count = 3,
      gap = 100,
      projectRootPatterns = {"runtime", "snippets", "nvim", ".git", "autoload", "plugin"},
      runtimepath = true
    },
    iskeyword = "@,48-57,_,192-255,-#",
    runtimepath = "",
    suggest = {
      fromRuntimepath = true,
      fromVimruntime = true
    },
    vimruntime = ""
  }
}

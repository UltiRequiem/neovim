-- npm install -g vim-language-server
require'lspconfig'.vimls.setup {
    cmd = {"vim-language-server", "--stdio"},
    on_attach = require'lsp.utils'.common_on_attach
}

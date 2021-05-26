-- sudo npm install -g typescript typescript-language-server

require'lspconfig'.tsserver.setup {
    cmd = {"typescript-language-server", "--stdio"},
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    on_attach = require'lsp.utils'.tsserver_on_attach,
    capabilities = require('lsp.utils').capabilities,
    root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
    settings = {documentFormatting = false},
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text =true,
            signs = true,
            underline =true,
            update_in_insert = true

        })
    }
}

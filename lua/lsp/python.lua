require'lspconfig'.pyright.setup {
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic
                                                               .on_publish_diagnostics,
                                                           {
            virtual_text = true,
            signs = true,
            underline = true,
            update_in_insert = true
        })
    },
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true
            }
        }
    }
}

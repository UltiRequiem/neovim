-- sudo npm install -g pyright

require'lspconfig'.pyright.setup {
  cmd = {"pyright-langserver", "--stdio"},
  on_attach = require'lsp.utils'.common_on_attach,
  handlers = {
    ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = true,
      signs = true,
      underline =true,
      update_in_insert = true
    })
  },
  settings = {
    python = {
      analysis = {
        typeCheckingMode = true,
        autoSearchPaths = true,
        useLibraryCodeForTypes = true
      }
    }
  }
}

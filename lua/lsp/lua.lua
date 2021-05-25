require'lspconfig'.sumneko_lua.setup {
    cmd = {"lua-language-server"},
    settings = {
        Lua = {
            runtime = {version = 'LuaJIT', path = "/usr/bin/luajit"},
            diagnostics = {globals = {'vim'}},
            workspace = {library = vim.api.nvim_get_runtime_file("", true)},
            telemetry = {enable = false}
        }
    }
}

local lua_settings = require('lua-dev').setup().settings.Lua
lua_settings.workspace.library = require('lua-dev.sumneko').library()
vim.fn['coc#config']('Lua', lua_settings)

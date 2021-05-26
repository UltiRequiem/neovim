-- yay -S lua-language-server

require'lspconfig'.sumneko_lua.setup {
  cmd = {"lua-language-server"},
  on_attach = require'lsp.utils'.common_on_attach,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = '/usr/bin/luajit'
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'}
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true},
        maxPreload = 10000
      }, telemetry = {
        enable = false,
      }
    }
  }
}

--local luadev = require("lua-dev").setup(
--{
--  {
--    library = {
--      vimruntime = true, -- runtime path
--      types = true, -- full signature, docs and completion of vim.api, vim.treesitter, vim.lsp and others
--      plugins = true -- installed opt or start plugins in packpath
--      -- you can also specify the list of plugins to make available as a workspace library
--      -- plugins = { "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
--    },
--  }
--  -- pass any additional options that will be merged in the final lsp config
--  lspconfig =  cmd = {"lua-language-server"},
--  on_attach = require "lsp.utils".common_on_attach,
--  settings = {
--    Lua = {
--      runtime = {
--        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--        version = "LuaJIT",
--        -- Setup your lua path
--        path = "/usr/bin/luajit"
--      },
--      diagnostics = {
--        -- Get the language server to recognize the `vim` global
--        globals = {"vim"}
--      },
--      workspace = {
--        -- Make the server aware of Neovim runtime files
--        library = {[vim.fn.expand("$VIMRUNTIME/lua")] = true, [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true},
--        maxPreload = 10000
--      },
--      telemetry = {
--        enable = false
--      }
--    }
--  }
--}
--}
--  )
--

--- local luadev = require("lua-dev").setup({lspconfig = sunmeko_config)
-- FIX: Try to get working lua-dev.nvim
-- require("lspconfig").sumneko_lua.setup(luadev)

local python_arguments = {}

local flake8 = {
    LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"}
}

local isort = {formatCommand = "isort --quiet -", formatStdin = true}

local black = {formatCommand = "black --quiet -", formatStdin = true}

table.insert(python_arguments, flake8)

table.insert(python_arguments, isort)

table.insert(python_arguments, black)

-- lua
local lua_arguments = {}

local luaFormat = {
    formatCommand = "lua-format -i --no-keep-simple-function-one-line --column-limit=120",
    formatStdin = true
}

local lua_fmt = {
    formatCommand = "luafmt --indent-count 2 --line-width 120 --stdin",
    formatStdin = true
}

table.insert(lua_arguments, lua_fmt)


-- tsserver/web javascript react, vue, json, html, css, yaml
local prettier = {formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true}
-- You can look for project scope Prettier and Eslint with e.g. vim.fn.glob("node_modules/.bin/prettier") etc. If it is not found revert to global Prettier where needed.
-- local prettier = {formatCommand = "./node_modules/.bin/prettier --stdin-filepath ${INPUT}", formatStdin = true}

local eslint = {
    lintCommand = "eslint -f unix --stdin --stdin-filename ${INPUT}",
    lintIgnoreExitCode = true,
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"},
    formatCommand = "eslint --fix-to-stdout --stdin --stdin-filename=${INPUT}",
    formatStdin = true
}

local tsserver_args = {}

table.insert(tsserver_args, prettier)

table.insert(tsserver_args, eslint)

-- local markdownlint = {
--     -- TODO default to global lintrc
--     -- lintcommand = 'markdownlint -s -c ./markdownlintrc',
--     lintCommand = 'markdownlint -s',
--     lintStdin = true,
--     lintFormats = {'%f:%l %m', '%f:%l:%c %m', '%f: %l: %m'}
-- }

local markdownPandocFormat = {formatCommand = 'pandoc -f markdown -t gfm -sp --tab-stop=2', formatStdin = true}

require"lspconfig".efm.setup {
    -- init_options = {initializationOptions},
    cmd = {"efm-langserver"},
    init_options = {documentFormatting = true, codeAction = false},
    filetypes = {"lua", "python", "javascriptreact", "javascript", "typescript","typescriptreact","sh", "html", "css", "json", "yaml", "markdown", "vue"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            python = python_arguments,
            lua = lua_arguments,
            sh = sh_arguments,
            javascript = tsserver_args,
            javascriptreact = tsserver_args,
			typescript = tsserver_args,
			typescriptreact = tsserver_args,
            html = {prettier},
            css = {prettier},
            json = {prettier},
            yaml = {prettier},
            markdown = {markdownPandocFormat}
            -- javascriptreact = {prettier, eslint},
            -- javascript = {prettier, eslint},
            -- markdown = {markdownPandocFormat, markdownlint},
        }
    }
}

-- Also find way to toggle format on save
-- maybe this will help: https://superuser.com/questions/439078/how-to-disable-autocmd-or-augroup-in-vim

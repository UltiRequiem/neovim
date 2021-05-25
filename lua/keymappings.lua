-- Mapping helper
local mapper = function(mode, key, result)
    vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

-- Define Mapleader
vim.g.mapleader = ' '

-- Save and Close
mapper("n", "w", ":w<CR>")
mapper("n", "q", ":q<CR>")
mapper("n", "Q", ":qa!<CR>")

-- Split
mapper("n", "<Leader>v", ":vsplit ")
mapper("n", "<Leader>s", ":split ")

-- Telescope
mapper("n", "tb", ":Telescope buffers<CR>")
mapper("n", "<Leader>vrc",
       ":lua require('plugins.fuzzy_finder').search_dotfiles()<CR>")
mapper("n", "<Leader>p", ":Telescope media_files<CR>")
mapper("n", "<C-F>", ":Telescope live_grep<CR>")
mapper("n", "<C-L>", ":Telescope find_files<CR>")

-- LSP
mapper("n", "<Leader>s", ":LspInfo<CR>")
mapper("n", "<Leader>gd", ":lua vim.lsp.buf.definition()<CR>")
mapper('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>')
mapper('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>')
mapper('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>')
mapper('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
mapper('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
mapper('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
mapper('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
mapper('n', '<space>wl',
       '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
mapper('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
mapper('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
mapper('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
mapper('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
mapper('n', '<space>e',
       '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
mapper('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
mapper('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
mapper('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')
mapper("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")

-- nvim-tree
mapper("n", "e", ":NvimTreeToggle<CR>")

-- Duplitcate Line
mapper("n", "tt", ":t.<CR>")

-- Change Buffer
mapper("n", "<C-M>", ":bnext<CR>")
mapper("n", "<C-N>", ":bprev<CR>")

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

-- Telescope
mapper("n", "tb", ":Telescope buffers<CR>")
mapper("n", "<Leader>v",":lua require('plugins.telescope').search_dotfiles()<CR>")
mapper("n", "<Leader>p", ":Telescope media_files<CR>")
mapper("n", "<C-F>", ":Telescope live_grep<CR>")
mapper("n", "<C-P>", ":Telescope find_files<CR>")

-- Rnvim
mapper('n', '-', ':RnvimrToggle<CR>')

-- LSP
mapper("n", "<Leader>s", ":LspInfo<CR>")
-- mapper("n", "gd", ":lua vim.lsp.buf.definition()<CR>")

-- File Tree Explorer
mapper("n", "e", ":NvimTreeToggle<CR>")

-- Duplitcate Line
mapper("n", "tt", ":t.<CR>")

-- Change Buffer
mapper("n", "<C-M>", ":bnext<CR>")
mapper("n", "<C-N>", ":bprev<CR>")
mapper("n", "<TAB>", ":bnext<CR>")
mapper("n", "<S-TAB>", ":bprevious<CR>")

-- Resize with arrows
mapper('n', '<C-Up>', ':resize -2<CR>')
mapper('n', '<C-Down>', ':resize +2<CR>')
mapper('n', '<C-Left>', ':vertical resize -2<CR>')
mapper('n', '<C-Right>', ':vertical resize +2<CR>')

-- Better window movement
mapper('n', '<C-h>', '<C-w>h')
mapper('n', '<C-j>', '<C-w>j')
mapper('n', '<C-k>', '<C-w>k')
mapper('n', '<C-l>', '<C-w>l')

-- Compe
mapper("i", "<Tab>", "v:lua.tab_complete()")
mapper("s", "<Tab>", "v:lua.tab_complete()")
mapper("i", "<S-Tab>", "v:lua.s_tab_complete()")
mapper("s", "<S-Tab>", "v:lua.s_tab_complete()")

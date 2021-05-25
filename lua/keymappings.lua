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

-- Plugins Mappings ↓

-- Telescope
mapper("n", "<C-F>", ":Telescope live_grep<CR>")
mapper("n", "<C-P>", ":Telescope find_files<CR>")
mapper("n", ",v",":lua require('plugins.telescope').search_dotfiles()<CR>")
mapper("n", ",p", ":Telescope media_files<CR>")

-- Hop.nvim
mapper("n",",f",":HopWord<CR>")
mapper("n",",l",":HopLine<CR>")
mapper("n",",o",":HopPattern<CR>")

-- LSP
mapper("n", "<Leader>s", ":LspInfo<CR>")
mapper("n", "<Leader>gd", ":lua vim.lsp.buf.definition()<CR>")

-- File Tree Explorer
mapper("n", "e", ":NvimTreeToggle<CR>")
mapper("n",",r",":NvimTreeRefresh<CR>")

-- Completion
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

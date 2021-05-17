-- Mapping helper
local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

-- Define Mapleader
vim.g.mapleader = ' '

-- Save and Close
mapper("n","<C-S>", ":w<CR>")
mapper("n","<C-Q>", ":q<CR>")

-- Dashboard
mapper("n","<C-A>",":DashboardFindWord<CR>")
mapper("n","<C-M>",":DashboardFindFile<CR>")

-- Telescope
mapper("n","tb",":Telescope buffers<CR>")
mapper("n","<Leader>vrc",":lua require('plugins.telescope').search_dotfiles()<CR>")
mapper("n","<Leader>p",":lua require('telescope').extensions.media_files.media_files()<CR>")

-- nvim-tree
mapper("n","<F2>",":NvimTreeToggle<CR>")

-- Duplitcate Line
mapper("n","tt",":t.<CR>")

-- Change Buffer
mapper("n","<C-M>",":bnext<CR>")
mapper("n","<C-N>",":bprev<CR>")

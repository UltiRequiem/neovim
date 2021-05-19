-- Mapping helper
local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

-- Define Mapleader
vim.g.mapleader = ' '

-- Save and Close
mapper("n","W",":w<CR>")
mapper("n","Q",":q<CR>")
mapper("n","<C-X>",":x<CR>")

-- Dashboard
mapper("n","M",":DashboardFindWord<CR>")
mapper("n","F",":DashboardFindFile<CR>")

-- Telescope
mapper("n","tb",":Telescope buffers<CR>")
mapper("n","<Leader>vrc",":lua require('plugins.fuzzy_finder').search_dotfiles()<CR>")
mapper("n","<Leader>p",":lua require('telescope').extensions.media_files.media_files()<CR>")

-- nvim-tree
mapper("n","E",":NvimTreeToggle<CR>")

-- Duplitcate Line
mapper("n","tt",":t.<CR>")

-- Change Buffer
mapper("n","<C-M>",":bnext<CR>")
mapper("n","<C-N>",":bprev<CR>")

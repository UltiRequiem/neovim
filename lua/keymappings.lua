-- Mapping helper
local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

-- Define Mapleader
vim.g.mapleader = ' '

-- Save and Close
mapper("n","w",":w<CR>")
mapper("n","q",":q<CR>")
mapper("n","ZA",":wqa!<CR>")

-- Split
mapper("n","<Leader>v",":vsplit ")
mapper("n","<Leader>s",":split ")

-- Dashboard
mapper("n","<C-F>",":DashboardFindWord<CR>")
mapper("n","<C-L>",":DashboardFindFile<CR>")

-- Telescope
mapper("n","tb",":Telescope buffers<CR>")
mapper("n","<Leader>vrc",":lua require('plugins.fuzzy_finder').search_dotfiles()<CR>")
mapper("n","<Leader>p",":lua require('telescope').extensions.media_files.media_files()<CR>")

-- nvim-tree
mapper("n","e",":NvimTreeToggle<CR>")

-- Duplitcate Line
mapper("n","tt",":t.<CR>")

-- Change Buffer
mapper("n","<C-M>",":bnext<CR>")
mapper("n","<C-N>",":bprev<CR>")

-- CoC
mapper("n","<Leader>gg",":CocCommand git.browserOpen<CR>")

-- Format Code
mapper("n","<Leader>ff",":Format<CR>")

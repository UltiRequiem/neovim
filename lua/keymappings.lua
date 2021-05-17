-- Mapping helper
local mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

-- Define Mapleader
vim.g.mapleader = ' '

-- Save and Close
mapper("n","w", ":w<CR>")
mapper("n","q", ":q<CR>")
mapper("n","<Leader>qq", ":q!<CR>")

-- Dashboard
mapper("n","f",":DashboardFindWord<CR>")
mapper("n","m",":DashboardFindFile<CR>")

-- Telescope
mapper("n","tb",":Telescope buffers<CR>")

-- nvim-tree
mapper("n","e",":NvimTreeToggle<CR>")

-- Duplitcate Line
mapper("n","tt",":t.<CR>")

mapper("n","<C-M>",":bnext<CR>")
mapper("n","<C-N>",":bprev<CR>")

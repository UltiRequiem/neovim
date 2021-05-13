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

-- nvim-tree
mapper("n","e",":NvimTreeToggle<CR>")


-- Others
mapper("n","tt",":t.<CR>")

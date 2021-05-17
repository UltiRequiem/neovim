local o = vim.o
local wo = vim.wo
local bo = vim.bo

o.termguicolors = true
o.t_Co = "256"
o.splitright = true
o.hidden = true
o.guifont = "Fira Code:h12"
o.lazyredraw = true
o.synmaxcol = 200

-- window-local options
wo.number = true
wo.wrap = false
wo.signcolumn="number"
o.undofile = true
o.undodir = "/tmp/"
o.backup = false
o.swapfile = false

vim.cmd [[silent! colorscheme  tokyonight]]

o.shell = "/bin/sh"

vim.g.python_host_prog = "python3"

-- Copy and paste between vim and everything else
o.clipboard = "unnamedplus"

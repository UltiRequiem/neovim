local global = vim.o
local window = vim.wo
local buffer = vim.bo

global.termguicolors = true 
global.t_Co = "256"
global.splitright = true
global.hidden = true
global.guifont = "Fira Code:h12"

-- window-local options
window.number = true
window.wrap = true
window.signcolumn="number"

global.undofile = true
global.undodir = "/tmp/"
global.backup = false 
global.swapfile = false

-- Copy and paste between vim and everything else
global.clipboard = "unnamedplus"

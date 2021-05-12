local global = vim.o
local window = vim.wo
local buffer = vim.bo

global.hidden = true

-- window-local options
window.number = true
window.wrap = true

global.undofile = true
global.undodir = "/tmp/"
global.backup = false 
global.swapfile = false

-- Copy and paste between vim and everything else
global.clipboard = "unnamedplus"

local g = vim.g
local o = vim.o
local bo = vim.bo
local wo = vim.wo
local cmd = vim.cmd
local fn = vim.fn

g.mapleader = ' '

-- Syntax on!
g.syntax_on = true

-- Work with several buffers
o.hidden = true

-- Numbers
wo.number = true
o.number = true

-- Relative Numbers!
wo.relativenumber = true
o.relativenumber = true

-- Nice Time
o.updatetime=250

-- Don't Wrap
wo.wrap = false
o.wrap = false

-- Tabs to Spaces
o.expandtab = true
bo.expandtab = true

-- Correct level of indentation
o.shiftwidth = 2
bo.shiftwidth = 2

-- I have a special configuration for each file in ftplugin/
o.softtabstop = 4
bo.softtabstop = 4

-- Autoident
o.autoindent = true
bo.autoindent = true

-- Highlight all matches while searching
o.incsearch = true
o.hlsearch = true

-- Ignorecase ins search pattern
o.ignorecase = true

-- Override the 'ignorecase' option if the search pattern contains upper case characters
o.smartcase = true

-- Will put the new window below the currentone. (:sp)
o.splitbelow = true

-- Will put the new window right of the current one. (:vs)
o.splitright = true

-- When and how to draw the signcolumn
o.signcolumn = 'yes'

-- Swapfiles are nice
o.swapfile = true

-- Swapfile config
o.shortmess = o.shortmess .. 'c'
o.directory = fn.expand(fn.stdpath('data') .. '/swap//')

-- Backups are nice
o.backup = true
-- Backup config
o.backupcopy = 'yes'
o.backupdir = fn.expand(fn.stdpath('data') .. '/backup//')

-- Undofiles are truly nice!
o.undofile = true
o.undodir = fn.expand(fn.stdpath('data') .. '/undo//')

-- Shows the effects of a command incrementally, as you type
o.inccommand = 'split'

-- WildIgnore Stuff
local wildignored = {
  "tags",
  "*/__pycache__/*",
  "build/*",
  "build.?/*",
  "*/node_modules/*",
  "*/env/*",
  "*.png",
  "*.jpg",
  "*.jpeg",
  "*/migrations/*",
  "*/.git/*"
}

local wildignore = ''
for i=1,#wildignored do
  wildignore = wildignore .. wildignored[i] .. ','
end

-- Finally, set wildignore...
o.wildignore = wildignore

-- Suffixes Stuff
-- Get a lower priority when multiple files match a wildcard
local suffixesed = {
  ".aux",
  ".log",
  ".dvi",
  ".bbl",
  ".blg",
  ".brf",
  ".cb",
  ".ind",
  ".idx",
  ".ilg",
  ".inx",
  ".out",
  ".toc",
  ".o",
  ".obj",
  ".dll",
  ".class",
  ".pyc",
  ".ipynb",
  ".so",
  ".swp",
  ".zip",
  ".exe",
  ".jar",
  ".gz"
}

local suffixes = ''
for i=1,#suffixesed do
  suffixes = suffixes .. suffixesed[i] .. ','
end

-- Finally, set suffixesed...
o.suffixes = suffixes

--  When set case is ignored when completing file names and directories
o.wildignorecase = true
o.wildcharm=26

-- Enables "enhanced mode" of command-line completion... that its <Tab> completion
o.wildmenu=true
o.wildmode='longest:full,full'

-- Minimal number of screen lines to keep above and below the cursor
o.scrolloff=3
o.sidescrolloff=3

-- RipGrep needed
o.grepprg="rg --vimgrep --no-heading --hidden --smart-case --no-ignore-vcs"
o.grepformat='%f:%l:%c:%m,%f:%l:%m'

-- Important
o.completeopt="menuone,noinsert,noselect"

-- I use Archlinux so it's simply:
g.python3_host_prog='/usr/bin/python'

-- Error Format
o.errorformat = o.errorformat .. ',%f'

-- Share Clipboard between the system and nvim
o.clipboard = 'unnamedplus'

-- Necesary
cmd('filetype plugin indent on')

-- Tokyonight FTW
cmd [[silent! colorscheme  tokyonight]]

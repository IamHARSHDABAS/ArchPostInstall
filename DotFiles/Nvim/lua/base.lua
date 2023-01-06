local g = vim.g
local o = vim.o
local opt = vim.opt

-- Terminal Colors
o.termguicolors = true

-- Scroll limit
o.scrolloff = 5

-- Number line
o.number = true
o.relativenumber = true

-- Tabs
o.tabstop = 4
o.shiftwidth = 4

-- Indicate space
o.list = true
o.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"

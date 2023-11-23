local global = vim.g
local o = vim.o

-- Map <leader>

global.mapleader = " "
global.maplocalleader = " "

-- Edior options

o.number = true
o.mouse = "a"
o.clipboard = 'unnamedplus'
o.showcmd = true
o.encoding = 'utf-8'
o.showmatch = true
o.shiftwidth = 2
o.relativenumber = true
o.syntax = "on"
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.tabstop = 2
o.ruler = true
o.title = true
o.hidden = true
o.ttimeoutlen = 0
o.wildmenu = true
o.inccomand = "split"
o.splitbelow = "splitright"

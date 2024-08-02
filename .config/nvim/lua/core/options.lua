local g = vim.g
local opt = vim.opt
local o = vim.o

-- Leader key
g.mapleader = ' '

-- Enable true colors
opt.termguicolors = true

-- Line numbers
opt.nu = true
opt.relativenumber = true

-- Tab width
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Window splitting
opt.splitright = true
opt.splitbelow = true

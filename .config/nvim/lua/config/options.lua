-- Leader key
vim.g.mapleader = " "

-- Enable true colors
vim.opt.termguicolors = true

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true
vim.o.statuscolumn = "%s %l %r"

-- Tab width
vim.cmd [[ 
	set ts=4 
	set sw=4 
]]

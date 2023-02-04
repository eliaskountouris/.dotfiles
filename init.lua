vim.g.mapleader = " "

vim.api.nvim_set_keymap('i','jk','<ESC>', { noremap = true })

vim.o.number = true
vim.o.relativenumber = true 
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.smarttab = 1
vim.o.mouse = 'a' 

require('plugins')

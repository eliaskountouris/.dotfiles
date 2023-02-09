vim.o.number = true
vim.o.relativenumber = true 
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.smarttab = 1
vim.o.mouse = 'a' 

-- Yank Highlight
vim.cmd([[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=500}
augroup END]])

require('keymaps')
require('plugins')

local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

-- Basic Keymaps ---------------------------------
	-- Open File Viewer
	map('n', '<leader>e', '<Cmd>Explore<CR>', opts)

-- Telescope Keymaps ---------------------------------
	-- Find File
	map('n', '<leader>ff', '<Cmd>Telescope find_files<CR>', opts)
	-- Live Grep
	map('n', '<leader>fg', '<Cmd>Telescope live_grep<CR>', opts)
	-- Treesitter functions, symbols
	map('n', '<leader>ft', '<Cmd>Telescope treesitter<CR>', opts)
	-- Treesitter functions, symbols
	map('n', '<leader>fc', '<Cmd>Telescope current_buffer_fuzzy_find<CR>', opts)

-- Treesitter Keymaps -------------------------------
	-- Close Fold
	map('n', '<leader>,', '<Cmd>foldclose<CR>', opts)	
	-- Open Fold
	map('n', '<leader>.', '<Cmd>foldopen<CR>', opts)	
	-- Open All Fold
	map('n', '<leader>/', 'zR', {silent = true, noremap = false})	

-- BarBar Keymaps ---------------------------------
	-- Switch Buffers
	map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
	map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
	-- Close Buffer
	map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
	-- Smart Buffer Pick
	map('n', '<A-/>', '<Cmd>BufferPick<CR>', opts)
	-- Sort Buffers
	map('n', '<A-s>', '<Cmd>BufferOrderByDirectory<CR>', opts)
	-- Open Vertical Tab
	map('n', '<A-;>', '<Cmd>vertical sb<CR>', opts)
	-- Open Horizontal Tab
	map('n', '<A-\'>', '<Cmd>sb<CR>', opts)
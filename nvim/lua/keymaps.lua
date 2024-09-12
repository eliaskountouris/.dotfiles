local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Basic Keymaps ---------------------------------
	-- Open File Viewer
	map('n', '<leader>e', '<Cmd>NvimTreeToggle<CR>', opts)
-- Open Cheatsheet 
	map('n', '<leader>c', '<Cmd>Cheatsheet<CR>', opts)

-- Telescope Find Keymaps ---------------------------------
	-- Find File
	map('n', '<leader>ff', '<Cmd>Telescope find_files<CR>', opts)
	-- Live Grep
	map('n', '<leader>fg', '<Cmd>Telescope live_grep<CR>', opts)
	-- Treesitter functions, symbols
	map('n', '<leader>ft', '<Cmd>Telescope treesitter<CR>', opts)
	-- Ctrl f for Telescope
	map('n', '<leader>fc', '<Cmd>Telescope current_buffer_fuzzy_find<CR>', opts)
	-- Treesitter goto definitions
	map('n', '<leader>fd', '<Cmd>Telescope lsp_definitions<CR>', opts)
	-- Treesitter goto type definitions
	map('n', '<leader>fs', '<Cmd>Telescope lsp_type_definitions<CR>', opts)

-- Telescope Git Keymaps ---------------------------------
	-- Git Commits 
	map('n', '<leader>gc', '<Cmd>Telescope git_commits<CR>', opts)
	-- Git Status
	map('n', '<leader>gs', '<Cmd>Telescope git_status<CR>', opts)
	-- Git Blame
	map('n', '<leader>gb', '<Cmd>GitBlameToggle<CR>', opts)

-- Treesitter Keymaps -------------------------------
	-- Close Fold
	map('n', '<leader>,', '<Cmd>foldclose<CR>', opts)	
	-- Open Fold
	map('n', '<leader>.', '<Cmd>foldopen<CR>', opts)	
	-- Open All Fold
	map('n', '<leader>/', 'zR', {silent = true, noremap = false})	

-- BarBar Keymaps ---------------------------------
	-- Switch Buffers
	map('n', '≤', '<Cmd>BufferPrevious<CR>', opts)
	map('n', '≥', '<Cmd>BufferNext<CR>', opts)
	map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
	map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
	-- Close Buffer
	map('n', 'ç', '<Cmd>BufferClose<CR>', opts)
	map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
	-- Smart Buffer Pick
	map('n', '÷', '<Cmd>BufferPick<CR>', opts)
	map('n', '<A-/>', '<Cmd>BufferPick<CR>', opts)
	-- Sort Buffers
	map('n', 'ß', '<Cmd>BufferOrderByDirectory<CR>', opts)
	map('n', '<A-s>', '<Cmd>BufferOrderByDirectory<CR>', opts)
	-- Open Vertical Tab
	map('n', '…', '<Cmd>vertical sb<CR>', opts)
	map('n', '<A-;>', '<Cmd>vertical sb<CR>', opts)
	-- Open Horizontal Tab
	map('n', 'æ', '<Cmd>sb<CR>', opts)
	map('n', '<A-\'>', '<Cmd>sb<CR>', opts)

-- Window Keymaps ---------------------------------
map('n', '<c-k>', '<Cmd>wincmd k<CR>', opts)
map('n', '<c-j>', '<Cmd>wincmd j<CR>', opts)
map('n', '<c-h>', '<Cmd>wincmd h<CR>', opts)
map('n', '<c-l>', '<Cmd>wincmd l<CR>', opts)
-- Toggle Search ---------------------------------
map('n', '<c-s>', '<Cmd>set hlsearch!<CR>', opts)
-- Quick Escape---------------------------------
map('i', 'jk', '<Esc> l', opts)
map('v', 'jk', '<Esc> l', opts)
-- Tabbing Reselect ---------------------------------
map('v', '>', '> gv', opts)
map('v', '<', '< gv', opts)

map('i', '	', '    ', opts)

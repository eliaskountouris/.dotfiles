return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Colorscheme
	use 'sainnhe/sonokai'

	-- Mason + LSP + linter 
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"mfussenegger/nvim-lint"
	}

	-- COQ
	use {
		"ms-jpq/coq_nvim", 
		"ms-jpq/coq.artifacts"
	}
	
	-- Treesitter
	use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
	
	-- Telescope
	use {
		"nvim-lua/plenary.nvim",
		'nvim-telescope/telescope.nvim', 
	}
end)

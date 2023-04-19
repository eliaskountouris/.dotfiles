return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Colorscheme
	use "joshdick/onedark.vim"

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

	-- Docs View
	use {
		"amrbashir/nvim-docs-view",
		opt = true,
		cmd = { "DocsViewToggle" },
		config = function()
		require("docs-view").setup {
			position = "right",
			width = 30,
		}
		end
	}

	-- Guess Indent
	use {
		'nmac427/guess-indent.nvim',
		config = function() require('guess-indent').setup {} end,
	}

	-- BarBar + Devicons
	use {
		"nvim-tree/nvim-web-devicons",
		"romgrk/barbar.nvim"
	}

	-- Cheatsheet
	use {
		"nvim-lua/popup.nvim",
		"sudormrfbin/cheatsheet.nvim"
	}
	
	-- Cursor Line
	use {
		"yamatsum/nvim-cursorline"
	}

	-- Wilder
	use {
		'gelguy/wilder.nvim'
	}
	
	-- Git Blame
	use {
		'f-person/git-blame.nvim'
	}

end)

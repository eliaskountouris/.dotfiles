return{{
	"joshdick/onedark.vim",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"mfussenegger/nvim-lint",
	"ms-jpq/coq_nvim",
	"ms-jpq/coq.artifacts",
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
	"amrbashir/nvim-docs-view",
	"nmac427/guess-indent.nvim",
	"romgrk/barbar.nvim",
	"nvim-lua/popup.nvim",
	"sudormrfbin/cheatsheet.nvim",
	"yamatsum/nvim-cursorline",
	"gelguy/wilder.nvim",
	"f-person/git-blame.nvim",
	"nvim-tree/nvim-web-devicons",
	{"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {"nvim-tree/nvim-web-devicons",},
		config = function()
		require("nvim-tree").setup {}
		end,
	},
	'nosduco/remote-sshfs.nvim',
    {
      "olimorris/onedarkpro.nvim",
      priority = 1000, -- Ensure it loads first
    }

}}

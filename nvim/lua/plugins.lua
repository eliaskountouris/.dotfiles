return{{
    "williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
    'mfussenegger/nvim-lint',

	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",

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

    {
      "olimorris/onedarkpro.nvim",
      priority = 1000, -- Ensure it loads first
    },
	{
		'goolord/alpha-nvim',
		config = function ()
			require'alpha'.setup(require'alpha.themes.dashboard'.config)
		end
	};
}}

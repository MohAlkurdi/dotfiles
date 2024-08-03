return {
	-- Tokyonight Theme
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight]]) -- storm - moon - night - day.

			local transparent = true -- set to true if you would like to enable transparency
			require("tokyonight").setup({
				transparent = transparent,
				styles = {
					sidebars = transparent and "transparent" or "dark",
					floats = transparent and "transparent" or "dark",
				},
			})
		end,
		opts = {},
	},

	-- Onedark Theme
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme onedark]])

			local transparent = true -- set to true if you would like to enable transparency
			require("onedark").setup({
				transparent = transparent,
			})
		end,
	},

	-- Github theme
	{
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme github_dark]])

			local transparent = true -- set to true if you would like to enable transparency
			require("github-theme").setup({
				options = {
					transparent = transparent,
				},
			})
		end,
	},

	-- Everforest theme
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			require("everforest").setup({
				transparent_background_level = 5,
			})
		end,
	},
}

return {
	-- Tokyonight Theme
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight]]) -- storm - moon - night - day.
		end,
		opts = {},
	},

	-- catppuccin Theme
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = false,
		config = function()
			vim.cmd([[colorscheme catppuccin-frappe]]) -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
		end,
	},

	-- Night owl
	{
		"oxfist/night-owl.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			require("night-owl").setup()
			vim.cmd.colorscheme("night-owl")
		end,
	},

	-- Palenight Theme
	{
		"alexmozaidze/palenight.nvim",
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme palenight]])
		end,
	},

	-- Onedark Theme
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme onedark]])
		end,
	},

	-- Onenord theme
	{
		"rmehri01/onenord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme onenord]])
		end,
	},

	-- Github theme
	{
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme github_dark]])
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
				-- Your config here
			})
		end,
	},
}

return {
	-- Tokyonight Theme
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight]]) -- storm - moon - night - day.

			local transparent = false -- set to true if you would like to enable transparency
			require("tokyonight").setup({
				transparent = transparent,
				styles = {
					sidebars = transparent and "transparent" or "dark",
					floats = transparent and "transparent" or "dark",
				},
			})
		end,
	},

	-- Catppuccin Theme
	{
		"catppuccin/nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme catppuccin-frappe]])

			require("catppuccin").setup({
				-- transparent_background = true,
			})
		end,
	},

	-- Onedark Theme
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme onedark]])

			require("onedark").setup({
				-- transparent = true,
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

			require("github-theme").setup({
				options = {
					-- transparent = true,
				},
			})
		end,
	},

	-- Everforest theme
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
		config = function()
			require("everforest").setup({
				-- transparent_background_level = 5,
			})
		end,
	},

	-- Sonokai theme
	{
		"sainnhe/sonokai",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.sonokai_enable_italic = true
			vim.cmd.colorscheme("sonokai")
			-- vim.g.sonokai_transparent_background = 2
		end,
	},

	-- newpaper theme
	{
		"yorik1984/newpaper.nvim",
		priority = 1000,
		config = function()
			require("newpaper").setup({
				style = "dark",
				-- disable_background = true, -- don't set background
			})
		end,
	},
}

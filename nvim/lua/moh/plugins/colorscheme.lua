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
		"olimorris/onedarkpro.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme onedark]])

			require("onedarkpro").setup({
				options = {
					transparency = true,
				},
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

	-- material theme
	{
		"marko-cerovac/material.nvim",
		priority = 1000,
		config = function()
			require("material").setup({
				-- disable = {
				-- 	background = true,
				-- },
			})
		end,
	},
}

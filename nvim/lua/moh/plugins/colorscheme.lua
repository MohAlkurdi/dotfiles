local transparent = true -- set to false to get the theme backgrounds back

return {
	-- Tokyonight Theme (default)
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "night", -- storm - moon - night - day
				transparent = transparent,
				styles = {
					sidebars = transparent and "transparent" or "dark",
					floats = transparent and "transparent" or "dark",
				},
			})
			vim.cmd.colorscheme("tokyonight")
		end,
	},

	-- Other themes, loaded only when picked with <leader>fc
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true,
		opts = { transparent_background = transparent },
	},
	{
		"olimorris/onedarkpro.nvim",
		lazy = true,
		opts = { options = { transparency = transparent } },
	},
	{
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		lazy = true,
		opts = { options = { transparent = transparent } },
	},
}

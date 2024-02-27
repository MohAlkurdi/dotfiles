-- Tokyonight Theme
-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd([[colorscheme tokyonight]]) -- storm - moon - night - day.
-- 	end,
-- 	opts = {},
-- }

-- Sonokai Theme
return {
	"sainnhe/sonokai",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.sonokai_style = "atlantis" -- atlantis - andromeda - shusia - maia - espresso
		vim.g.sonokai_enable_italic = 1
		vim.g.sonokai_transparent_background = 1
		vim.cmd([[colorscheme sonokai]])
	end,
	opts = {},
}

-- catppuccin Theme
-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	lazy = false,
-- 	config = function()
-- 		vim.cmd([[colorscheme catppuccin-frappe]]) -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
-- 	end,
-- }

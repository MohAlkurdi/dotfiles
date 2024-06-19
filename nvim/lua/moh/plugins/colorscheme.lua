-- Tokyonight Theme
-- return {
-- 		"folke/tokyonight.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 		config = function()
-- 			vim.cmd([[colorscheme tokyonight]]) -- storm - moon - night - day.
-- 		end,
-- 		opts = {},
-- 	}

-- catppuccin Theme
-- return {
-- 		"catppuccin/nvim",
-- 		name = "catppuccin",
-- 		priority = 1000,
-- 		lazy = false,
-- 		config = function()
-- 			vim.cmd([[colorscheme catppuccin-frappe]]) -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
-- 		end,
-- 	}

-- Night owl
-- return {
-- 		"oxfist/night-owl.nvim",
-- 		lazy = false, -- make sure we load this during startup if it is your main colorscheme
-- 		priority = 1000, -- make sure to load this before all the other start plugins
-- 		config = function()
-- 			-- load the colorscheme here
-- 			require("night-owl").setup()
-- 			vim.cmd.colorscheme("night-owl")
-- 		end,
-- 	}

-- Palenight Theme
return {
	"alexmozaidze/palenight.nvim",
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme palenight]])
	end,
}

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				icons_enabled = true,
				theme = "auto",
			},
			sections = {
				lualine_a = {
					{
						-- "filename",
						path = 1,
					},
				},
			},
		})
	end,
}

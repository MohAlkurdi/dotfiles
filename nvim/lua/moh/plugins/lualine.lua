return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			icons_enabled = true,
			theme = "auto",
			globalstatus = true,
			disabled_filetypes = { statusline = { "snacks_dashboard" } },
		},
		sections = {
			lualine_b = { { "filename", path = 1 }, "branch" },
			lualine_c = { "diff", "diagnostics" },
			lualine_x = {
				{
					-- active language servers
					function()
						local names = vim.tbl_map(function(client)
							return client.name
						end, vim.lsp.get_clients({ bufnr = 0 }))
						return #names > 0 and (" " .. table.concat(names, ", ")) or ""
					end,
				},
				"filetype",
			},
		},
	},
}

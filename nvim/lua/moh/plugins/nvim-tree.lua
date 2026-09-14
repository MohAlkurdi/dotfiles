return {
	"nvim-tree/nvim-tree.lua",
	cmd = { "NvimTreeToggle", "NvimTreeOpen", "NvimTreeFindFile" },
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		-- `nvim some/dir` opens the tree in that directory (plain `nvim` shows the dashboard)
		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function(data)
				if vim.fn.isdirectory(data.file) == 1 then
					vim.cmd.cd(data.file)
					require("nvim-tree.api").tree.open()
				end
			end,
		})
	end,
	config = function()
		-- change color for arrows in tree to light blue
		vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#3FC5FF" })

		require("nvim-tree").setup({
			view = {
				adaptive_size = true,
				side = "right",
			},
			update_focused_file = {
				enable = true,
			},
			ui = {
				confirm = {
					default_yes = true,
				},
			},
			filters = {
				dotfiles = false,
				git_ignored = false,
			},
		})
	end,
}

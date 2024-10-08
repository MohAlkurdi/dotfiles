return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local nvimtree = require("nvim-tree")

		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- change color for arrows in tree to light blue
		vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

		-- configure nvim-tree
		nvimtree.setup({
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

		-- open nvim-tree on setup

		local function open_nvim_tree(data)
			-- buffer is a [No Name]
			local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

			-- buffer is a directory
			local directory = vim.fn.isdirectory(data.file) == 1

			if not no_name and not directory then
				return
			end

			-- change to the directory
			if directory then
				vim.cmd.cd(data.file)
			end

			-- open the tree
			require("nvim-tree.api").tree.open()
		end

		vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

		vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
	end,
}

return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		local wk = require("which-key")
		wk.add({
			{
				-- Buffer
				{ "<leader>b", group = "Buffer" },
				{ "<leader>ba", ":%bd<CR>", desc = "Close All buffer" },
				{ "<leader>bc", ":BufferLinePickClose<CR>", desc = "Close" },
				{ "<leader>bd", "<cmd>bdelete<CR>", desc = "Delete" },

				-- Code Action
				{ "<leader>c", group = "Code Action" },
				{ "<leader>cD", "<cmd>Telescope diagnostics bufnr=0<CR>", desc = "Show buffer diagnostics" },
				{ "<leader>ca", "<Cmd>lua vim.lsp.buf.code_action()<CR>", desc = "Available Code Action" },
				{ "<leader>cd", "<Cmd>lua vim.diagnostic.open_float()<CR>", desc = "Show Line Diagnostics" },
				{ "<leader>co", "<cmd>:%bd|e#|bd#<CR>", desc = "Close other tabs" },
				{ "<leader>cr", "<Cmd>lua vim.lsp.buf.rename()<CR>", desc = "Smart rename" },
				{ "<leader>cs", ":LspRestart<CR>", desc = "Restart LSP" },
				{
					"<leader>cw",
					":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
					desc = "Change Word under cursor",
				},

				-- Find
				{ "<leader>f", group = "Find" },
				{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffer" },
				{ "<leader>fc", ":Telescope colorscheme<CR>", desc = "Colorscheme" },
				{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
				{ "<leader>fg", ":LazyGit<CR>", desc = "LazyGit" },
				{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find help" },
				{ "<leader>fn", "<cmd>enew<cr>", desc = "New File" },
				{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent File" },
				{ "<leader>fs", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
				{ "<leader>ft", ":TodoTelescope<CR>", desc = "Find Todo" },

				-- Go To
				{ "<leader>g", group = "Go To" },
				{ "<leader>gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", desc = "Go to declaration" },
				{ "<leader>gr", "<cmd>Telescope lsp_references<CR>", desc = "Show LSP references" },
				{ "<leader>gd", "<cmd>Telescope lsp_definitions<CR>", desc = "Show lSP definitions" },
				{ "<leader>gi", "<cmd>Telescope lsp_implementations<CR>", desc = "Go to implementation" },
				{ "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", desc = "Show Git Hunk" },
				{ "<leader>gt", "<cmd>Telescope lsp_type_definitions<CR>", desc = "Show LSP type definitions" },

				-- Window Split
				{ "<leader>s", group = "Window Split" },
				{ "<leader>se", "<C-w>=", desc = "Resize Split" },
				{ "<leader>sh", "<C-w>s", desc = "Split horizontally" },
				{ "<leader>ss", ":setlocal spell!<CR>", desc = "Set Spell" },
				{ "<leader>sv", "<C-w>v", desc = "Split Vertically" },
				{ "<leader>sx", ":close<CR>", desc = "Close Split" },

				-- Test
				{ "<leader>t", group = "Test" },
				{
					"<leader>tt",
					function()
						require("neotest").run.run()
					end,
					desc = "Run the test under the cursor",
				},
				{
					"<leader>tf",
					function()
						require("neotest").run.run(vim.fn.expand("%"))
					end,
					desc = "Run test in the current file",
				},
			},
		})
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}

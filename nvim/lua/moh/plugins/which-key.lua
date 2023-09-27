return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500

		local wk = require("which-key")
		wk.register({
			["<leader>"] = {
				f = {
					name = "+Find",
					f = { "<cmd>Telescope find_files<cr>", "Find File" },
					r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
					n = { "<cmd>enew<cr>", "New File" },
					t = { ":TodoTelescope<CR>", "Find Todo" },
					s = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
					c = { "<cmd>Telescope grep_string<cr>", "Find String Under Cursor" },
					b = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
					g = { ":LazyGit<CR>", "LazyGit" },
				},
				b = {
					name = "+Buffer",
					d = { "<cmd>bdelete<CR>", "Delete" },
					c = { ":BufferLinePickClose<CR>", "Close" },
				},
				x = {
					name = "+Trouble",
					x = { "<cmd>TroubleToggle<cr>", "Troble Toggle" },
					w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics" },
					d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics" },
					l = { "<cmd>TroubleToggle loclist<cr>", "Loc List" },
					q = { "<cmd>TroubleToggle quickfix<cr>", "Quick Fix" },
				},
				g = {
					name = "+Go To",
					R = { "<cmd>Telescope lsp_references<CR>", "Show LSP references" },
					D = { "<Cmd>lua vim.lsp.buf.declaration()<CR>", "Go to declaration" },
					d = { "<cmd>Telescope lsp_definitions<CR>", "Show lSP definitions" },
					i = { "<cmd>Telescope lsp_implementations<CR>", "Go to implementation" },
					t = { "<cmd>Telescope lsp_type_definitions<CR>", "Show LSP type definitions" },
				},
				c = {
					name = "+Code Action",
					a = { "<Cmd>lua vim.lsp.buf.code_action()<CR>", "Available Code Action" },
					r = { "<Cmd>lua vim.lsp.buf.rename()<CR>", "Smart rename" },
					d = { "<Cmd>lua vim.diagnostic.open_float()<CR>", "Show Line Diagnostics" },
					D = { "<cmd>Telescope diagnostics bufnr=0<CR>", "Show buffer diagnostics" },
					s = { ":LspRestart<CR>", "Restart LSP" },
					w = { ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", "Change Word under cursor" },
				},
				s = {
					name = "+Window Split",
					v = { "<C-w>v", "Split Vertically" },
					h = { "<C-w>s", "Split horizontally" },
					e = { "<C-w>=", "Resize Split" },
					x = { ":close<CR>", "Close Split" },
					s = { ":setlocal spell!<CR>", "Set Spell" },
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

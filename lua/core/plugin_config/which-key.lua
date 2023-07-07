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
			p = { ":BufferLinePick<CR>", "Picker" },
			c = { ":BufferLinePickClose<CR>", "Close" },
		},
		x = {
			name = "+Troble",
			x = { "<cmd>TroubleToggle<cr>", "Troble Toggle" },
			w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics" },
			d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics" },
			l = { "<cmd>TroubleToggle loclist<cr>", "Loc List" },
			q = { "<cmd>TroubleToggle quickfix<cr>", "Quick Fix" },
		},
		g = {
			name = "+Go To",
			f = { "<cmd>Lspsaga lsp_finder<CR>", "Show definition, references" },
			D = { "<Cmd>lua vim.lsp.buf.declaration()<CR>", "Go to declaration" },
			d = { "<cmd>Lspsaga peek_definition<CR>", "see definition in float window" },
			i = { "<cmd>Lspsaga peek_definition<CR>", "Go to implementation" },
		},
		c = {
			name = "+Code Action",
			a = { "<cmd>Lspsaga code_action<CR>", "Available Code Action" },
			r = { "<cmd>Lspsaga rename<CR>", "Smart rename" },
			d = { "<cmd>Lspsaga show_line_diagnostics<CR>", "Line Diagnostics" },
			D = { "<cmd>Lspsaga show_cursor_diagnostics<CR>", "Cursor Diagnostics" },
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

return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- stylua: ignore start
		spec = {
			-- Top level
			{ "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
			{ "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
			{ "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "File Explorer" },
			{ "<leader>l", function() require("lint").try_lint() end, desc = "Trigger linting for current file" },
			{ "<leader>n", function() Snacks.notifier.show_history() end, desc = "Notification History" },
			{ "<leader>p", function() require("conform").format({ async = true, lsp_format = "fallback" }) end, mode = { "n", "v" }, desc = "Format file or range (in visual mode)" },
			{ "<leader>z", function() Snacks.zen() end, desc = "Zen Mode" },
			{ "<leader>Z", function() Snacks.zen.zoom() end, desc = "Zoom Window" },
			{ "<leader>.", function() Snacks.scratch() end, desc = "Scratch Buffer" },
			{ "<leader>;", function() require("dropbar.api").pick() end, desc = "Pick Breadcrumb Symbol" },

			-- Buffer
			{ "<leader>b", group = "Buffer" },
			{ "<leader>ba", function() Snacks.bufdelete.all() end, desc = "Close All buffer" },
			{ "<leader>bc", function() Snacks.bufdelete() end, desc = "Close" },
			{ "<leader>bd", "<cmd>bdelete<CR>", desc = "Delete" },
			{ "<leader>bo", function() Snacks.bufdelete.other() end, desc = "Close other buffers" },

			-- Code Action
			{ "<leader>c", group = "Code Action" },
			{ "<leader>cD", function() Snacks.picker.diagnostics_buffer() end, desc = "Show buffer diagnostics" },
			{ "<leader>ca", vim.lsp.buf.code_action, mode = { "n", "v" }, desc = "Available Code Action" },
			{ "<leader>cd", vim.diagnostic.open_float, desc = "Show Line Diagnostics" },
			{ "<leader>cl", "<cmd>checkhealth vim.lsp<CR>", desc = "LSP Info" },
			{ "<leader>co", function() Snacks.bufdelete.other() end, desc = "Close other tabs" },
			{ "<leader>cr", vim.lsp.buf.rename, desc = "Smart rename" },
			{ "<leader>cR", function() Snacks.rename.rename_file() end, desc = "Rename File (updates imports)" },
			{ "<leader>cs", "<cmd>lsp restart<CR>", desc = "Restart LSP" },
			{ "<leader>cw", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", desc = "Change Word under cursor" },

			-- Find
			{ "<leader>f", group = "Find" },
			{ "<leader>fb", function() Snacks.picker.buffers() end, desc = "Find Buffer" },
			{ "<leader>fc", function() Snacks.picker.colorschemes() end, desc = "Colorscheme" },
			{ "<leader>fC", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
			{ "<leader>fd", function() Snacks.picker.diagnostics() end, desc = "Workspace Diagnostics" },
			{ "<leader>ff", function() Snacks.picker.files() end, desc = "Find File" },
			{ "<leader>fg", function() Snacks.lazygit() end, desc = "LazyGit" },
			{ "<leader>fh", function() Snacks.picker.help() end, desc = "Find help" },
			{ "<leader>fk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
			{ "<leader>fn", "<cmd>enew<CR>", desc = "New File" },
			{ "<leader>fo", function() Snacks.picker.lsp_symbols() end, desc = "Document Symbols" },
			{ "<leader>fO", function() Snacks.picker.lsp_workspace_symbols() end, desc = "Workspace Symbols" },
			{ "<leader>fr", function() Snacks.picker.recent() end, desc = "Open Recent File" },
			{ "<leader>fR", function() Snacks.picker.resume() end, desc = "Resume Last Search" },
			{ "<leader>fs", function() Snacks.picker.grep() end, desc = "Live Grep" },
			{ "<leader>ft", function() Snacks.picker.todo_comments() end, desc = "Find Todo" },
			{ "<leader>fu", function() Snacks.picker.undo() end, desc = "Undo History" },
			{ "<leader>fw", function() Snacks.picker.grep_word() end, mode = { "n", "x" }, desc = "Grep Word / Selection" },

			-- Go To
			{ "<leader>g", group = "Go To" },
			{ "<leader>gD", vim.lsp.buf.declaration, desc = "Go to declaration" },
			{ "<leader>gc", function() Snacks.picker.lsp_incoming_calls() end, desc = "Incoming calls" },
			{ "<leader>gC", function() Snacks.picker.lsp_outgoing_calls() end, desc = "Outgoing calls" },
			{ "<leader>gd", function() Snacks.picker.lsp_definitions() end, desc = "Show LSP definitions" },
			{ "<leader>gi", function() Snacks.picker.lsp_implementations() end, desc = "Go to implementation" },
			{ "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", desc = "Show Git Hunk" },
			{ "<leader>gr", function() Snacks.picker.lsp_references() end, desc = "Show LSP references" },
			{ "<leader>gt", function() Snacks.picker.lsp_type_definitions() end, desc = "Show LSP type definitions" },

			-- Git
			{ "<leader>h", group = "Git" },
			{ "<leader>hs", "<cmd>Gitsigns stage_hunk<CR>", mode = { "n", "v" }, desc = "Stage / Unstage Hunk" },
			{ "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>", mode = { "n", "v" }, desc = "Reset Hunk" },
			{ "<leader>hS", "<cmd>Gitsigns stage_buffer<CR>", desc = "Stage Buffer" },
			{ "<leader>hR", "<cmd>Gitsigns reset_buffer<CR>", desc = "Reset Buffer" },
			{ "<leader>hp", "<cmd>Gitsigns preview_hunk_inline<CR>", desc = "Preview Hunk Inline" },
			{ "<leader>hb", function() require("gitsigns").blame_line({ full = true }) end, desc = "Blame Line" },
			{ "<leader>hB", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "Toggle Line Blame" },
			{ "<leader>hd", "<cmd>DiffviewOpen<CR>", desc = "Diff View (working tree)" },
			{ "<leader>hq", "<cmd>DiffviewClose<CR>", desc = "Close Diff View" },
			{ "<leader>hf", "<cmd>DiffviewFileHistory %<CR>", desc = "File History" },
			{ "<leader>hF", "<cmd>DiffviewFileHistory<CR>", desc = "Repo History" },
			{ "<leader>hl", function() Snacks.picker.git_log() end, desc = "Git Log" },
			{ "<leader>hc", function() Snacks.picker.git_branches() end, desc = "Branches" },
			{ "<leader>hg", function() Snacks.picker.git_status() end, desc = "Git Status" },
			{ "<leader>ho", function() Snacks.gitbrowse() end, mode = { "n", "v" }, desc = "Open in Browser (GitHub)" },

			-- Window Split
			{ "<leader>s", group = "Window Split" },
			{ "<leader>se", "<C-w>=", desc = "Resize Split" },
			{ "<leader>sh", "<C-w>s", desc = "Split horizontally" },
			{ "<leader>ss", "<cmd>setlocal spell!<CR>", desc = "Set Spell" },
			{ "<leader>sv", "<C-w>v", desc = "Split Vertically" },
			{ "<leader>sx", "<cmd>close<CR>", desc = "Close Split" },

			-- Toggles (defined in snacks.lua)
			{ "<leader>u", group = "Toggle" },
			{ "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss Notifications" },

			-- Trouble
			{ "<leader>x", group = "Trouble" },
			{ "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Diagnostics" },
			{ "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Buffer Diagnostics" },
			{ "<leader>xs", "<cmd>Trouble symbols toggle focus=false<CR>", desc = "Symbols Outline" },
			{ "<leader>xl", "<cmd>Trouble lsp toggle focus=false win.position=right<CR>", desc = "LSP Definitions / References" },
			{ "<leader>xq", "<cmd>Trouble qflist toggle<CR>", desc = "Quickfix List" },
			{ "<leader>xL", "<cmd>Trouble loclist toggle<CR>", desc = "Location List" },
		},
		-- stylua: ignore end
	},
}

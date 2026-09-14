return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		current_line_blame = true,
		on_attach = function(bufnr)
			local gitsigns = require("gitsigns")
			local map = function(mode, keys, func, desc)
				vim.keymap.set(mode, keys, func, { buffer = bufnr, desc = desc })
			end

			-- jump between hunks (falls back to ]c / [c in diff mode)
			map("n", "]h", function()
				if vim.wo.diff then
					vim.cmd.normal({ "]c", bang = true })
				else
					gitsigns.nav_hunk("next")
				end
			end, "Next git hunk")
			map("n", "[h", function()
				if vim.wo.diff then
					vim.cmd.normal({ "[c", bang = true })
				else
					gitsigns.nav_hunk("prev")
				end
			end, "Previous git hunk")

			-- `ih` selects the hunk under the cursor (e.g. `dih`, `vih`)
			map({ "o", "x" }, "ih", gitsigns.select_hunk, "Git hunk")
		end,
	},
}

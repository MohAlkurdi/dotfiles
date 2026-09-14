-- NOTE: javascript/typescript linting comes from the eslint language server
return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			go = { "golangcilint" },
		}

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = vim.api.nvim_create_augroup("lint", { clear = true }),
			callback = function()
				lint.try_lint(nil, { ignore_errors = true })
			end,
		})
	end,
}

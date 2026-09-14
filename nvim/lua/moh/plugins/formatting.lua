-- use biome when the project has a biome config, otherwise prettier
local function web_formatter(bufnr)
	local biome = vim.fs.find({ "biome.json", "biome.jsonc" }, {
		upward = true,
		path = vim.fs.dirname(vim.api.nvim_buf_get_name(bufnr)),
	})[1]
	if biome then
		return { "biome-check" }
	end
	return { "prettierd", "prettier", stop_after_first = true }
end

return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		formatters_by_ft = {
			javascript = web_formatter,
			typescript = web_formatter,
			javascriptreact = web_formatter,
			typescriptreact = web_formatter,
			astro = web_formatter,
			css = web_formatter,
			scss = web_formatter,
			html = web_formatter,
			json = web_formatter,
			jsonc = web_formatter,
			yaml = { "prettierd", "prettier", stop_after_first = true },
			markdown = { "prettierd", "prettier", stop_after_first = true },
			graphql = { "prettierd", "prettier", stop_after_first = true },
			lua = { "stylua" },
			go = { "goimports", "gofumpt" },
			cs = { "csharpier" },
			php = { "pint" }, -- uses the project's vendor/bin/pint
			blade = { "blade-formatter" },
		},
		format_on_save = function(bufnr)
			-- toggle with <leader>uf (global) / <leader>uF (buffer)
			if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
				return
			end
			return { timeout_ms = 3000, lsp_format = "fallback" }
		end,
	},
}

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_null_ls = require("mason-null-ls")

-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"lua_ls",
		"tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"emmet_ls",
		"prismals",
		"pyright",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"prettier", -- ts/js formatter
		"stylua", -- lua formatter
		"eslint_d", -- ts/js linter
		"mypy", -- python analysis
		"ruff", -- python analysis
		"black", -- python formatter
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})

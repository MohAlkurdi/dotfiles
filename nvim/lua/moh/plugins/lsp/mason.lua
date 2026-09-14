return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {
				-- the extra registry provides `roslyn` (same C# server version as VS Code)
				registries = {
					"github:mason-org/mason-registry",
					"github:Crashdummyy/mason-registry",
				},
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			},
		},
		"neovim/nvim-lspconfig",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- installed language servers are enabled automatically
		require("mason-lspconfig").setup({
			automatic_enable = {
				exclude = { "stylua" }, -- formatter only (conform), not a language server
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				-- language servers
				"lua_ls",
				"gopls",
				"vtsls", -- javascript / typescript / react
				"eslint",
				"astro",
				"tailwindcss",
				"html",
				"cssls",
				"emmet_language_server",
				"intelephense", -- php
				"roslyn", -- c# (started by roslyn.nvim)

				-- formatters & linters
				"stylua", -- lua formatter
				"prettierd", -- js/ts/css/html/json/markdown formatter
				"gofumpt", -- go formatter
				"goimports", -- go imports
				"golangci-lint", -- go linter
				"csharpier", -- c# formatter
				"blade-formatter", -- blade
			},
		})
	end,
}

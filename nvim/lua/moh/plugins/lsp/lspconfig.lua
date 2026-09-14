return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		-- Diagnostics: signs in the gutter, inline text and rounded floats
		vim.diagnostic.config({
			severity_sort = true,
			float = { source = true },
			underline = true,
			virtual_text = { spacing = 2, source = "if_many" },
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = " ",
					[vim.diagnostic.severity.WARN] = " ",
					[vim.diagnostic.severity.HINT] = "󰠠 ",
					[vim.diagnostic.severity.INFO] = " ",
				},
			},
		})

		-- Buffer-local keymaps once a language server attaches.
		-- Neovim already provides: K (hover), grn (rename), gra (code action),
		-- grr (references), gri (implementation), grt (type definition),
		-- gO (document symbols), [d / ]d (diagnostics), <C-s> (signature help in insert mode)
		-- More LSP keymaps are in which-key.lua under <leader>c and <leader>g
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("moh-lsp-attach", { clear = true }),
			callback = function(event)
				local map = function(keys, func, desc)
					vim.keymap.set("n", keys, func, { buffer = event.buf, desc = desc })
				end

				map("gd", function()
					Snacks.picker.lsp_definitions()
				end, "Go to definition")
				map("gD", vim.lsp.buf.declaration, "Go to declaration")
				map("<leader>rs", "<cmd>lsp restart<CR>", "Restart LSP")

				-- highlight references of the word under the cursor
				local client = vim.lsp.get_client_by_id(event.data.client_id)
				if client and client:supports_method("textDocument/documentHighlight", event.buf) then
					local group = vim.api.nvim_create_augroup("moh-lsp-highlight", { clear = false })
					vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
						buffer = event.buf,
						group = group,
						callback = vim.lsp.buf.document_highlight,
					})
					vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
						buffer = event.buf,
						group = group,
						callback = vim.lsp.buf.clear_references,
					})
				end
			end,
		})

		-- Server specific settings (merged on top of nvim-lspconfig defaults).
		-- Servers are enabled by mason-lspconfig once installed.
		vim.lsp.config("gopls", {
			settings = {
				gopls = {
					gofumpt = true,
					staticcheck = true,
					completeUnimported = true,
					usePlaceholders = true,
					analyses = {
						unusedparams = true,
						unusedvariable = true,
					},
					hints = {
						assignVariableTypes = true,
						compositeLiteralFields = true,
						constantValues = true,
						functionTypeParameters = true,
						parameterNames = true,
						rangeVariableTypes = true,
					},
				},
			},
		})

		local ts_inlay_hints = {
			parameterNames = { enabled = "literals" },
			parameterTypes = { enabled = true },
			variableTypes = { enabled = false },
			propertyDeclarationTypes = { enabled = true },
			functionLikeReturnTypes = { enabled = true },
			enumMemberValues = { enabled = true },
		}
		vim.lsp.config("vtsls", {
			settings = {
				complete_function_calls = true,
				vtsls = {
					enableMoveToFileCodeAction = true,
					autoUseWorkspaceTsdk = true,
				},
				typescript = {
					updateImportsOnFileMove = { enabled = "always" },
					suggest = { completeFunctionCalls = true },
					inlayHints = ts_inlay_hints,
				},
				javascript = {
					updateImportsOnFileMove = { enabled = "always" },
					inlayHints = ts_inlay_hints,
				},
			},
		})

		vim.lsp.config("emmet_language_server", {
			filetypes = {
				"html",
				"css",
				"scss",
				"javascriptreact",
				"typescriptreact",
				"astro",
				"blade",
				"php",
			},
		})

		vim.lsp.config("roslyn", {
			settings = {
				["csharp|inlay_hints"] = {
					csharp_enable_inlay_hints_for_implicit_object_creation = true,
					csharp_enable_inlay_hints_for_implicit_variable_types = true,
				},
				["csharp|code_lens"] = {
					dotnet_enable_references_code_lens = true,
				},
			},
		})
	end,
}

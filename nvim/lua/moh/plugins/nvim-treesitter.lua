local parsers = {
	"astro",
	"bash",
	"blade",
	"c_sharp",
	"css",
	"diff",
	"dockerfile",
	"git_config",
	"gitcommit",
	"gitignore",
	"go",
	"gomod",
	"gosum",
	"gowork",
	"html",
	"javascript",
	"jsdoc",
	"json",
	"lua",
	"luadoc",
	"markdown",
	"markdown_inline",
	"php",
	"php_only",
	"query",
	"razor",
	"regex",
	"scss",
	"sql",
	"toml",
	"tsx",
	"typescript",
	"vim",
	"vimdoc",
	"xml",
	"yaml",
}

return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false, -- does not support lazy-loading
		build = ":TSUpdate",
		config = function()
			local ts = require("nvim-treesitter")
			ts.install(parsers)

			vim.api.nvim_create_autocmd("FileType", {
				group = vim.api.nvim_create_augroup("moh-treesitter", { clear = true }),
				desc = "Start treesitter highlighting & indentation",
				callback = function(args)
					local lang = vim.treesitter.language.get_lang(args.match)
					if not lang then
						return
					end

					-- auto install parsers for filetypes that are not in the list above
					if not vim.list_contains(ts.get_installed(), lang) then
						if vim.list_contains(ts.get_available(), lang) then
							ts.install(lang):await(function()
								if vim.api.nvim_buf_is_valid(args.buf) then
									pcall(vim.treesitter.start, args.buf, lang)
								end
							end)
						end
						return
					end

					if pcall(vim.treesitter.start, args.buf, lang) then
						vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
					end
				end,
			})
		end,
	},

	-- select / move by functions, classes and arguments
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		branch = "main",
		event = "VeryLazy",
		init = function()
			vim.g.no_plugin_maps = true
		end,
		config = function()
			require("nvim-treesitter-textobjects").setup({
				select = { lookahead = true },
				move = { set_jumps = true },
			})

			local select = require("nvim-treesitter-textobjects.select")
			local move = require("nvim-treesitter-textobjects.move")

			local objects = {
				f = { "@function", "function" },
				c = { "@class", "class" },
				a = { "@parameter", "argument" },
			}
			for key, obj in pairs(objects) do
				vim.keymap.set({ "x", "o" }, "a" .. key, function()
					select.select_textobject(obj[1] .. ".outer", "textobjects")
				end, { desc = "a " .. obj[2] })
				vim.keymap.set({ "x", "o" }, "i" .. key, function()
					select.select_textobject(obj[1] .. ".inner", "textobjects")
				end, { desc = "inner " .. obj[2] })
				-- ]c / [c stay free for jumping between diff changes
				if key ~= "c" then
					vim.keymap.set({ "n", "x", "o" }, "]" .. key, function()
						move.goto_next_start(obj[1] .. ".outer", "textobjects")
					end, { desc = "Next " .. obj[2] })
					vim.keymap.set({ "n", "x", "o" }, "[" .. key, function()
						move.goto_previous_start(obj[1] .. ".outer", "textobjects")
					end, { desc = "Previous " .. obj[2] })
				end
			end
		end,
	},

	-- auto close & rename html/jsx/astro/blade tags
	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPre", "BufNewFile" },
		opts = {},
	},

	-- correct comment strings for jsx/tsx/astro when using `gc`
	{
		"folke/ts-comments.nvim",
		event = "VeryLazy",
		opts = {},
	},
}

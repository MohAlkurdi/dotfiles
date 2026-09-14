return {
	"saghen/blink.cmp",
	version = "1.*", -- release tags ship a prebuilt fuzzy matcher
	-- not lazy-loaded: blink registers its LSP capabilities before servers start
	lazy = false,
	dependencies = {
		"rafamadriz/friendly-snippets", -- useful snippets
	},
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = "enter", -- <CR> accepts, <C-space> opens, <C-e> closes, <C-b>/<C-f> scroll docs
			["<C-k>"] = { "select_prev", "fallback" }, -- previous suggestion
			["<C-j>"] = { "select_next", "fallback" }, -- next suggestion
			["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
			["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
			["<C-s>"] = { "show_signature", "hide_signature", "fallback" },
		},
		appearance = { nerd_font_variant = "mono" },
		completion = {
			list = { selection = { preselect = false } },
			documentation = { auto_show = true, auto_show_delay_ms = 200 },
			menu = {
				draw = {
					columns = { { "kind_icon" }, { "label", "label_description", gap = 1 }, { "source_name" } },
				},
			},
		},
		signature = { enabled = true },
		sources = {
			default = { "lazydev", "lsp", "path", "snippets", "buffer" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					score_offset = 100,
				},
			},
		},
		cmdline = {
			keymap = { preset = "inherit" },
			completion = { menu = { auto_show = true } },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}

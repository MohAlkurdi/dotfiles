return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		local time = os.date("%H:%M")
		local v = vim.version()
		local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch

		dashboard.section.header.val = {
			[[    ███╗   ███╗ █████╗ ██╗  ██╗███████╗   ]],
			[[    ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝   ]],
			[[    ██╔████╔██║███████║█████╔╝ █████╗     ]],
			[[    ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝     ]],
			[[    ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗   ]],
			[[    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ]],
			[[      ██████╗ ██████╗  ██████╗ ██╗        ]],
			[[     ██╔════╝██╔═══██╗██╔═══██╗██║        ]],
			[[     ██║     ██║   ██║██║   ██║██║        ]],
			[[     ██║     ██║   ██║██║   ██║██║        ]],
			[[     ╚██████╗╚██████╔╝╚██████╔╝███████╗   ]],
			[[      ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝   ]],
			[[███████╗████████╗██╗   ██╗███████╗███████╗]],
			[[██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝]],
			[[███████╗   ██║   ██║   ██║█████╗  █████╗  ]],
			[[╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝  ]],
			[[███████║   ██║   ╚██████╔╝██║     ██║     ]],
			[[╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝     ]],
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "Find File   ", ":Telescope find_files<CR>"),
			dashboard.button("s", "Find text   ", ":Telescope live_grep <CR>"),
			dashboard.button("q", "Quit        ", ":qa<CR>"),
		}

		dashboard.section.footer.val = {
			" " .. time .. " ",
			version,
		}

		alpha.setup(dashboard.opts)
		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}

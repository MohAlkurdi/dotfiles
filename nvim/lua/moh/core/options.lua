local opt = vim.opt -- for conciseness

-- disable netrw (nvim-tree replaces it)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.hlsearch = false -- not keep search highlighting
opt.incsearch = true -- search as you type
opt.inccommand = "split" -- live preview of :s substitutions

-- cursor line
opt.cursorline = true -- highlight the current cursor line
opt.guicursor = "" -- Fat Cursor (gonna have some rough time with this)

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.scrolloff = 22 -- lines to keep visible above and below the cursor when scrolling vertically.
opt.sidescrolloff = 22 -- number of characters to keep visible to the left and right of the cursor when scrolling horizontally
opt.winborder = "rounded" -- rounded borders for all floating windows (hover, diagnostics, ...)
opt.showmode = false -- mode is already shown in lualine
opt.laststatus = 3 -- single global statusline

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard (scheduled because it can slow down startup)
vim.schedule(function()
	opt.clipboard = "unnamedplus" -- use system clipboard as default register
end)

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.iskeyword:append("-") -- consider string-string as whole word

-- persistent undo
opt.undofile = true

-- faster CursorHold (used by gitsigns blame, LSP highlights, ...)
opt.updatetime = 250
opt.timeoutlen = 400

-- treesitter folds, open by default
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel = 99

-- better arabic text
opt.termbidi = true

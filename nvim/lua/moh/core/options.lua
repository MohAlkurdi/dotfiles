local opt = vim.opt -- for conciseness

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

-- cursor line
opt.cursorline = true -- highlight the current cursor line
opt.guicursor = "" -- Fat Cursor (gonna have some rough time with this)

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
opt.termguicolors = true
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.scrolloff = 22 -- lines to keep visible above and below the cursor when scrolling vertically.
opt.sidescrolloff = 22 -- number of characters to keep visible to the left and right of the cursor when scrolling horizontally

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.iskeyword:append("-") -- consider string-string as whole word

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd([[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]])

-- better arabic text
opt.termbidi = true

-- disable continuation of comments
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.opt.formatoptions:remove({ "c", "r", "o" })
	end,
	group = vim.api.nvim_create_augroup("General Settings", { clear = true }),
	desc = "Disable New Line Comment",
})

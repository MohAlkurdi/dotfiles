local augroup = vim.api.nvim_create_augroup("General Settings", { clear = true })

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.api.nvim_create_autocmd("TextYankPost", {
	group = augroup,
	desc = "Highlight on yank",
	callback = function()
		vim.hl.on_yank({ higroup = "Visual", timeout = 200 })
	end,
})

-- disable continuation of comments
vim.api.nvim_create_autocmd("BufEnter", {
	group = augroup,
	desc = "Disable New Line Comment",
	callback = function()
		vim.opt.formatoptions:remove({ "c", "r", "o" })
	end,
})

-- go back to the last cursor position when reopening a file
vim.api.nvim_create_autocmd("BufReadPost", {
	group = augroup,
	desc = "Restore cursor position",
	callback = function(args)
		local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
		local lines = vim.api.nvim_buf_line_count(args.buf)
		if mark[1] > 0 and mark[1] <= lines then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})

-- equalize splits when the terminal is resized
vim.api.nvim_create_autocmd("VimResized", {
	group = augroup,
	desc = "Resize splits",
	command = "tabdo wincmd =",
})

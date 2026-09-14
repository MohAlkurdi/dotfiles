-- Review diffs, merge conflicts and file history. Keymaps under <leader>h in which-key.lua
return {
	"sindrets/diffview.nvim",
	cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
	opts = {
		enhanced_diff_hl = true,
	},
}

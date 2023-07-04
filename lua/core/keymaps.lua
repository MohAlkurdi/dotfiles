-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- use <leader> w for fast save
keymap.set("n", "<leader>w", ":write<CR>", { desc = "Save" })
--------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- NOTE: More keymaps can be found in plugin_config/which-key.lua directory

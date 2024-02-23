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

-- use J & K to move lines up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Switch between buffers
keymap.set("n", "<S-l>", ":bnext<CR>")
keymap.set("n", "<S-h>", ":bprevious<CR>")

-- Close terminal buffer
keymap.set("t", "<C-w>h", "<C-\\><C-n><C-w>h", { silent = true })

--------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- NOTE: More keymaps can be found in plugin_config/which-key.lua directory

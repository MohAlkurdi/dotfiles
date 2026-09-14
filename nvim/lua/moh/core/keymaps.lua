-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- use <leader> w for fast save
keymap.set("n", "<leader>w", "<cmd>write<CR>", { desc = "Save" })

-- use J & K to move lines up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- keep selection when indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Switch between buffers
keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

-- move between windows
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- paste over a selection without losing the yanked text
keymap.set("x", "<leader>P", [["_dP]], { desc = "Paste without yanking" })

-- add a comment above/below (built-in `gc` handles the rest)
keymap.set("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<CR>fxa<bs>", { desc = "Add comment below" })
keymap.set("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<CR>fxa<bs>", { desc = "Add comment above" })

-- exit terminal mode
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- NOTE: <leader> keymaps live in plugins/which-key.lua

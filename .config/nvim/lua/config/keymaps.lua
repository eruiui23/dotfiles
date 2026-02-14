-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- -- Navigate buffers
vim.keymap.set("n", "<A-h>", ":bprevious<CR>", { silent = true })
vim.keymap.set("n", "<A-l>", ":bnext<CR>", { silent = true })

vim.keymap.del("n", "H")
vim.keymap.del("n", "L")

local set = vim.keymap.set
local del = vim.keymap.del

-- 1. Remove the default Alt mappings
del("n", "<A-j>")
del("n", "<A-k>")
del("i", "<A-j>")
del("i", "<A-k>")
del("v", "<A-j>")
del("v", "<A-k>")

-- 2. Map Shift + j/k to move lines
-- Normal Mode
-- set("n", "J", "<cmd>m .+1<cr>==平衡", { desc = "Move Down" })
-- set("n", "K", "<cmd>m .-2<cr>==平衡", { desc = "Move Up" })

-- Visual Mode (moves the whole selection)
set("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
set("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

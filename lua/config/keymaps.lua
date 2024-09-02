-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "i", "v" }, "jk", "<esc>", { desc = "Enter Normal Mode" })
map({ "i", "v", "n" }, "<C-a>", "ggVG", { desc = "Select All Text" })

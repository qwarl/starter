-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "i", "v" }, "jk", "<esc>", { desc = "Enter Normal Mode" })
map({ "i", "v", "n" }, "<C-a>", "ggVG", { desc = "Select All Text" })
map("t", "jk", "<c-\\><c-n>", { desc = "Enter Normal Mode" })

-- open tree explorer by oil
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- local map = LazyVim.safe_keymap_set

map("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>")
map("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>")
map("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>")
map("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>")

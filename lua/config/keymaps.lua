-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
local map = LazyVim.safe_keymap_set

map("n", "<leader>pv", "<cmd>Explore<cr>", { desc = "Netwr" })
map("n", "<leader>z", "<cmd>ZenMode<cr>", { desc = "ZenMode" })

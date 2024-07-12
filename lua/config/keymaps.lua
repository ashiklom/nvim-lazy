-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>fs", "<cmd>w<cr>", { silent = true, desc = "Save" })

vim.keymap.set("n", "<leader>w\\", "<cmd>vsp<cr>", { silent = true, desc = "Split vertical" })
vim.keymap.set("n", "<leader>w-", "<cmd>sp<cr>", { silent = true, desc = "Split horizontal" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { silent = true, desc = "Window down" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { silent = true, desc = "Window up" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { silent = true, desc = "Window left" })
vim.keymap.set("n", "<leader>wh", "<C-w>h", { silent = true, desc = "Window right" })

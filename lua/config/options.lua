-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.maplocalleader = " m"

vim.opt.relativenumber = false
vim.g.autoformat = false

-- Python should use pyright and ruff (not ruff_lsp)
vim.g.lazyvim_python_ruff = "ruff"
vim.g.lazyvim_python_lsp = "pyright"

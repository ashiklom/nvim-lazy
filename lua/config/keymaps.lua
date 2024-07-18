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

-- Toggle completion (https://github.com/hrsh7th/nvim-cmp/issues/261#issuecomment-930003962)
vim.g.cmp_toggle_flag = true -- initialize
local normal_buftype = function()
  return vim.api.nvim_get_option_value('buftype', {scope = "local"}) ~= 'prompt'
end

local toggle_completion = function()
  local ok, cmp = pcall(require, "cmp")
  if ok then
    local next_cmp_toggle_flag = not vim.g.cmp_toggle_flag
    if next_cmp_toggle_flag then
      print("completion on")
    else
      print("completion off")
    end
    cmp.setup {
      enabled = function()
        vim.g.cmp_toggle_flag = next_cmp_toggle_flag
        if next_cmp_toggle_flag then
          return normal_buftype()
        else
          return next_cmp_toggle_flag
        end
      end
    }
  else
    print("completion not available")
  end
end
vim.keymap.set("n", "<leader>ux", toggle_completion)

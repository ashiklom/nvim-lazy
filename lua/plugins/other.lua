return {
  {
    "TimUntersberger/neogit",
    keys = {
      {
        "<leader>gg",
        function()
          require("neogit").open()
        end,
      },
    },
    opts = {
      disable_commit_confirmation = true,
      mappings = {
        popup = {
          ["F"] = "PullPopup",
          ["p"] = "PushPopup",
        },
      },
      kind = "split_above",
      popup = { kind = "split_above" },
    },
  },
  {
    "imsnif/kdl.vim",
    ft = "kdl"
  },
  {
    "JuliaEditorSupport/julia-vim",
    lazy = false
  },
  {
    'echasnovski/mini.splitjoin',
    opts = {
      mappings = {
        toggle = 'g=',
        split = '',
        join = ''
      }
    }
  },
    -- config = function()
    --   local ms = require('mini.splitjoin')
    --   ms.setup{
    --     mappings = {
    --       toggle = 'g[',
    --       split = 'g{',
    --       join = 'g}'
    --     }
    --   }
    --   vim.keymap.set('i', '<C-e>', ms.toggle, {desc="Toggle splitjoin"})
    -- end
}

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
  {
    'folke/flash.nvim',
    keys = {
      -- Disable default keys
      {'s', mode = { "n", "x", "o" }, false},
      {'S', mode = { "n", "x", "o" }, false},
      -- Use `gs` keys for flash instead
      { "gs", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "gS", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    }
  },
  {
    "kylechui/nvim-surround",
    config = true
  }
}

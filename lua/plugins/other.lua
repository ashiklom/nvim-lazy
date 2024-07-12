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
}

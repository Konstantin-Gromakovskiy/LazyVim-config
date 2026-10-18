return {
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview" },
      { "<leader>gD", "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
      { "<leader>gq", "<cmd>DiffviewClose<cr>", desc = "Close Diffview" },
    },
    opts = {
      enhanced_diff_hl = true,
      view = {
        default = {
          layout = "diff2_horizontal",
        },
        file_history = {
          layout = "diff2_horizontal",
        },
      },
      file_panel = {
        win_config = {
          width = 35,
        },
      },
    },
  },
}

return {
  {
    "rmagatti/auto-session",
    keys = {
      { "<leader>qr", "<cmd>SessionRestore<cr>", desc = "auto-session restore" },
      { "<leader>qS", "<cmd>SessionSave<cr>", desc = "auto-session save" },
      { "<leader>qf", ":lua require('auto-session.session-lens').search_session()<CR>", desc = "auto-session lens" },
    },

    cmd = { "SessionSave", "SessionRestore" },

    opts = {
      -- log_level = "error",
      auto_session_enabled = true,
      auto_save_enabled = true,
      session_lens = {
        buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },
    },
  },
}

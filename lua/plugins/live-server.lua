return {
  {
    "barrett-ruth/live-server.nvim",
    build = "npm install -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop", "LiveServerToggle" },
    config = true,

    keys = {
      { "<leader>lt", "<cmd>LiveServerToggle<cr>", desc = "toggle live server" },
    },
  },
}

return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    terminal = {
      ---@class snacks.terminal.Config
      ---@field win? snacks.win.Config
      ---@field override? fun(cmd?: string|string[], opts?: snacks.terminal.Opts) Use this to use a different terminal implementation

      win = { position = "float" },
    },
  },
}

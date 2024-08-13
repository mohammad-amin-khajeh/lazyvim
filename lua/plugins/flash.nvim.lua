return {
  {
    "folke/flash.nvim",
    event = function()
      return {}
    end,

    keys = function()
      return {
        { "f" },
        { "t" },
        { "F" },
        { "T" },
      }
    end,

    opts = {
      modes = {
        char = {
          highlight = { backdrop = false },
          jump_labels = false,
        },
      },
    },
  },
}

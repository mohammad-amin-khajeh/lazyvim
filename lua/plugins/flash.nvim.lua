return {
  {
    "folke/flash.nvim",
    keys = {
      { "s", mode = { "n", "x", "o" }, false },
      { "S", mode = { "n", "x", "o" }, false },
    },
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

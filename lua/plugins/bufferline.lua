return {
  "akinsho/bufferline.nvim",
  event = function()
    return "BufAdd"
  end,
  keys = {
    { "<C-S-Left>", mode = "n", "<cmd>BufferLineMovePrev<cr>", desc = "move buffer to the left" },
    { "<C-S-right>", mode = "n", "<cmd>BufferLineMoveNext<cr>", desc = "move buffer to the right" },
    { "<S-left>", mode = "n", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<S-right>", mode = "n", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
  },
}

return {

  {
    "gbprod/yanky.nvim",
    event = function()
      return {}
    end,
  },

  {
    "echasnovski/mini.ai",
    event = function()
      return "InsertEnter"
    end,
    keys = { "d", "y", "c", "s" },
  },

  {
    "echasnovski/mini.pairs",
    event = function()
      return "InsertEnter"
    end,
  },

  {
    "akinsho/bufferline.nvim",
    event = function()
      return "BufAdd"
    end,
    keys = {
      { "<C-S-Left>", "<cmd>BufferLineMovePrev<cr>", desc = "move buffer to the left" },
      { "<C-S-right>", "<cmd>BufferLineMoveNext<cr>", desc = "move buffer to the right" },
    },
  },
}

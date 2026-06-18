return {
  "Wansmer/treesj",
  dependencies = { "nvim-treesitter/nvim-treesitter" },

  keys = {

    {
      "sj",
      function()
        require("treesj").toggle()
      end,
      mode = "n",
      desc = "Join toggle",
    },

    {
      "sJ",
      function()
        require("treesj").toggle({ split = { recursive = true } })
      end,
      mode = "n",
    },
  },

  opts = { use_default_keymaps = false },
}

return {
  {
    "hiphish/rainbow-delimiters.nvim",
    event = "BufReadPost",
    commit = "97b8238",
    config = function()
      require("rainbow-delimiters.setup").setup({
        highlight = {
          "RainbowDelimiterRed",
          "RainbowDelimiterCyan",
          "RainbowDelimiterYellow",
          "RainbowDelimiterBlue",
          "RainbowDelimiterOrange",
          "RainbowDelimiterGreen",
          "RainbowDelimiterViolet",
        },
      })
    end,
  },
}

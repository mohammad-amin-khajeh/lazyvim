return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = true,
    },
  },

  {
    "HiPhish/rainbow-delimiters.nvim",
    lazy = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = { component_separators = "|", section_separators = "" },
    },
  },
}

return {
  {
    "chomosuke/typst-preview.nvim",
    ft = "typst",
    version = "1.*",
    config = function()
      require("typst-preview").setup()
      require("config.typst_lsp")
    end,
  },
}

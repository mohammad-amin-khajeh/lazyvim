return {
  {
    "rafamadriz/friendly-snippets",
    opts = function()
      -- require("luasnip").filetype_extend("htmldjango", { "html" })
      require("luasnip").filetype_extend("python", { "django" })
      require("luasnip").filetype_extend("typescriptreact", { "html" })
    end,
  },

  -- {
  --   "garymjr/nvim-snippets",
  --   opts = {
  --     extended_filetypes = {
  --       typescriptreact = { "html" },
  --     },
  --   },
  -- },
}

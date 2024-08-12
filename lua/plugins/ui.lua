return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.lsp.hover = { silent = true }
      opts.presets.lsp_doc_border = true
    end,
  },
}

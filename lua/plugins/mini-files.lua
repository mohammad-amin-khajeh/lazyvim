return {
  {
    "echasnovski/mini.files",
    keys = {
      {
        "<leader>e",
        function()
          MiniFiles.open(vim.api.nvim_buf_get_name(0))
        end,
        desc = "toggle mini files in buffer's directory",
      },
      {
        "<leader>E",
        function()
          MiniFiles.open()
        end,
        desc = "toggle mini files",
      },
    },
    opts = {
      mappings = {
        go_in = "<enter>",
        go_out = "..",
      },
    },
  },
}

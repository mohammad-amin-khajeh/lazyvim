return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Oil",
    keys = {
      { "<leader>o", "<CMD>Oil<CR>", desc = "Oil open parent directory" },
    },

    config = function()
      require("oil").setup({
        "icon",
        "size",
        "mtime",

        view_options = {
          show_hidden = true,
        },
      })
    end,
  },
}

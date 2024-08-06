-- add more treesitter parsers

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "css",
        "html",
        "htmldjango",
        "javascript",
        "json",
        "jsonc",
        "lua",
        "markdown",
        "norg",
        "python",
        "rust",
        "sql",
        "tsx",
        "typescript",
      },

      indent = {
        enable = true,
        disable = {
          "python",
        },
      },
    },
  },
}

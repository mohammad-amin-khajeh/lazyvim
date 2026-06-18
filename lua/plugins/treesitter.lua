return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    keys = {
      {
        "<leader>gc",
        function()
          require("treesitter-context").go_to_context(vim.v.count1)
        end,
        silent = true,
        mode = "n",
        desc = "Goto context",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",

    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "c",
        "cpp",
        "make",
        "python",
        "rust",
        "sxhkdrc",
        "vim",
        "yaml",
        "zsh",
      })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    event = function()
      return {}
    end,
    keys = {
      "d",
      "c",
      "y",
      "v",
      "<s-v>",
      "<c-v>",
      "]",
      "[",
    },
  },
}

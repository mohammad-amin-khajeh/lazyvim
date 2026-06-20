return {
  {
    "nvim-mini/mini.surround",

    keys = {
      { "ss", "sa_", remap = true, mode = "n" },
      { "S", "sa$", remap = true, mode = "n" },
    },

    opts = {
      mappings = {
        add = "sa", -- Add surrounding in Normal and Visual modes
        delete = "sd", -- Delete surrounding
        find = "sf", -- Find surrounding (to the right)
        find_left = "sF", -- Find surrounding (to the left)
        highlight = "sh", -- Highlight surrounding
        replace = "sr", -- Replace surrounding
        update_n_lines = "sn", -- Update `n_lines`
      },
      n_lines = 1000,
      custom_surroundings = {
        c = {
          input = { "%b{}", "^.%s().*()%s.$" },
          output = { left = "{ ", right = " }" },
        },
        C = {
          input = { "%b{}", "^.().*().$" },
          output = { left = "{", right = "}" },
        },
        B = {
          input = { "%b[]", "^.().*().$" },
          output = { left = "[", right = "]" },
        },
        a = {
          input = { "%b<>", "^.%s().*()%s.$" },
          output = { left = "< ", right = " >" },
        },
        A = {
          input = { "%b<>", "^.().*().$" },
          output = { left = "<", right = ">" },
        },
      },
    },
  },

  {
    "nvim-mini/mini.files",
    opts = {
      mappings = {
        go_out = "H",
        go_out_plus = "..",
        go_in = "<CR>",
      },
    },
    keys = {
      {
        "<leader>e",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open mini.files (Directory of Current File)",
      },

      {
        "<leader>E",
        function()
          require("mini.files").open(vim.uv.cwd(), true)
        end,
        desc = "Open mini.files (cwd)",
      },
    },
  },

  {
    "nvim-mini/mini.operators",
    config = function()
      require("mini.operators").setup()
    end,
    event = "VeryLazy",
    keys = {
      { "gR", "gr$", desc = "replace till the end of the line", remap = true },
      { "grr", "gr_", desc = "Replace line" },
      { "gmm", "gm_", desc = "Multiply line" },
      { "gxx", "gx_", desc = "Exchange line" },
      { "g==", "g=_", desc = "Evaluate line" },
    },
  },

  {
    "nvim-mini/mini.jump",
    keys = { "f", "F", "t", "T" },
    config = function()
      require("mini.jump").setup({
        delay = { highlight = 10 ^ 9 },
        mappings = { repeat_jump = "" },
      })
    end,
  },
}

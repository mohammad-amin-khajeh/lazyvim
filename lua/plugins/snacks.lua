return {
  "folke/snacks.nvim",
  ---@type snacks.Config

  keys = {
    { "<leader>e", false },
    { "<leader>E", false },
    {
      "<leader>gr",
      function()
        Snacks.picker.lsp_references()
      end,
      nowait = true,
      desc = "Goto References",
    },

    {
      "<leader>cR",
      function()
        Snacks.rename.rename_file()
      end,
      desc = "rename file",
    },
  },

  opts = {
    explorer = { enabled = false },

    terminal = { shell = "zsh" },

    styles = {

      terminal = { position = "float" },

      -- make zen mode more zenful
      zen = {
        backdrop = { transparent = false },
      },
    },

    -- move explorer to the right
    picker = {
      sources = {
        explorer = {
          layout = {
            layout = {
              position = "right",
            },
          },
        },
      },
    },
  },
}

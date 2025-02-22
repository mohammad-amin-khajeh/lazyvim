return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    styles = {

      -- make terminal float
      terminal = {
        position = "float",
      },

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

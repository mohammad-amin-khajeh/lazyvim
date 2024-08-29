return {
  {
    "cbochs/grapple.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Grapple",
    opts = {
      scope = "cwd",
      icons = true,
      status = true,
    },
    keys = {
      { "<leader>a", "<cmd>Grapple toggle<cr>", desc = "grapple toggle a file" },
      { "<C-e>", "<cmd>Grapple toggle_tags<cr>", desc = "grapple toggle tags menu" },

      {
        "<leader>1",
        function()
          if
            require("grapple").exists()
            and require("grapple").find({ index = 1 }) == require("grapple").find({ buffer = 0 })
          then
            vim.cmd.norm("")
          else
            vim.cmd("Grapple select index=1")
          end
        end,
        desc = "grapple select first tag",
      },

      {
        "<leader>2",
        function()
          if
            require("grapple").exists()
            and require("grapple").find({ index = 2 }) == require("grapple").find({ buffer = 0 })
          then
            vim.cmd.norm("")
          else
            vim.cmd("Grapple select index=2")
          end
        end,
        desc = "grapple select second tag",
      },

      {
        "<leader>3",
        function()
          if
            require("grapple").exists()
            and require("grapple").find({ index = 3 }) == require("grapple").find({ buffer = 0 })
          then
            vim.cmd.norm("")
          else
            vim.cmd("Grapple select index=3")
          end
        end,
        desc = "grapple select third tag",
      },

      {
        "<leader>4",
        function()
          if
            require("grapple").exists()
            and require("grapple").find({ index = 4 }) == require("grapple").find({ buffer = 0 })
          then
            vim.cmd.norm("")
          else
            vim.cmd("Grapple select index=4")
          end
        end,
        desc = "grapple select fourth tag",
      },

      {
        "<leader>5",
        function()
          if
            require("grapple").exists()
            and require("grapple").find({ index = 5 }) == require("grapple").find({ buffer = 0 })
          then
            vim.cmd.norm("")
          else
            vim.cmd("Grapple select index=5")
          end
        end,
        desc = "grapple select fifth tag",
      },

      {
        "<leader>6",
        function()
          if
            require("grapple").exists()
            and require("grapple").find({ index = 6 }) == require("grapple").find({ buffer = 0 })
          then
            vim.cmd.norm("")
          else
            vim.cmd("Grapple select index=6")
          end
        end,
        desc = "grapple select sixth tag",
      },

      {
        "<leader>7",
        function()
          if
            require("grapple").exists()
            and require("grapple").find({ index = 7 }) == require("grapple").find({ buffer = 0 })
          then
            vim.cmd.norm("")
          else
            vim.cmd("Grapple select index=7")
          end
        end,
        desc = "grapple select seventh tag",
      },

      {
        "<leader>8",
        function()
          if
            require("grapple").exists()
            and require("grapple").find({ index = 8 }) == require("grapple").find({ buffer = 0 })
          then
            vim.cmd.norm("")
          else
            vim.cmd("Grapple select index=8")
          end
        end,
        desc = "grapple select eighth tag",
      },

      {
        "<leader>9",
        function()
          if
            require("grapple").exists()
            and require("grapple").find({ index = 9 }) == require("grapple").find({ buffer = 0 })
          then
            vim.cmd.norm("")
          else
            vim.cmd("Grapple select index=9")
          end
        end,
        desc = "grapple select ninth tag",
      },
    },
  },
}

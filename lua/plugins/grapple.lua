local function grapple_select(index)
  if
    require("grapple").exists()
    and require("grapple").find({ index = index }) == require("grapple").find({ buffer = 0 })
  then
    vim.cmd("b#")
  else
    vim.cmd("Grapple select index=" .. index)
  end
end

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
      { "<leader>a", "<cmd>Grapple toggle<cr>", desc = "toggle grappling a file" },
      { "<C-e>", "<cmd>Grapple toggle_tags<cr>", desc = "toggle grapple tags menu" },

      {
        "<leader>1",
        function()
          grapple_select(1)
        end,
        desc = "grapple select first tag",
      },

      {
        "<leader>2",
        function()
          grapple_select(2)
        end,
        desc = "grapple select second tag",
      },

      {
        "<leader>3",
        function()
          grapple_select(3)
        end,
        desc = "grapple select third tag",
      },

      {
        "<leader>4",
        function()
          grapple_select(4)
        end,
        desc = "grapple select fourth tag",
      },

      {
        "<leader>5",
        function()
          grapple_select(5)
        end,
        desc = "grapple select fifth tag",
      },

      {
        "<leader>6",
        function()
          grapple_select(6)
        end,
        desc = "grapple select sixth tag",
      },

      {
        "<leader>7",
        function()
          grapple_select(7)
        end,
        desc = "grapple select seventh tag",
      },

      {
        "<leader>8",
        function()
          grapple_select(8)
        end,
        desc = "grapple select eighth tag",
      },

      {
        "<leader>9",
        function()
          grapple_select(9)
        end,
        desc = "grapple select ninth tag",
      },
    },
  },
}

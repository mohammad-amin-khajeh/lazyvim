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
      { "<leader>1", "<cmd>Grapple select index=1<cr>", desc = "grapple select first tag" },
      { "<leader>2", "<cmd>Grapple select index=2<cr>", desc = "grapple select second tag" },
      { "<leader>3", "<cmd>Grapple select index=3<cr>", desc = "grapple select third tag" },
      { "<leader>4", "<cmd>Grapple select index=4<cr>", desc = "grapple select fourth tag" },
      { "<leader>5", "<cmd>Grapple select index=5<cr>", desc = "grapple select fifth tag" },
      { "<leader>6", "<cmd>Grapple select index=6<cr>", desc = "grapple select sixth tag" },
      { "<leader>7", "<cmd>Grapple select index=7<cr>", desc = "grapple select seventh tag" },
      { "<leader>8", "<cmd>Grapple select index=8<cr>", desc = "grapple select eighth tag" },
      { "<leader>9", "<cmd>Grapple select index=9<cr>", desc = "grapple select ninth tag" },
    },
  },
}

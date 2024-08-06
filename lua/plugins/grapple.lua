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
      { "<leader>a", "<cmd>Grapple tag<cr>", desc = "grapple tag a file" },
      { "<C-e>", "<cmd>Grapple toggle_tags<cr>", desc = "grapple toggle tags menu" },
      { "<A-c>", "<cmd>Grapple select index=1<cr>", desc = "grapple select first tag" },
      { "<A-v>", "<cmd>Grapple select index=2<cr>", desc = "grapple select second tag" },
      { "<A-b>", "<cmd>Grapple select index=3<cr>", desc = "grapple select third tag" },
      { "<A-n>", "<cmd>Grapple select index=4<cr>", desc = "grapple select fourth tag" },
      { "<A-m>", "<cmd>Grapple select index=5<cr>", desc = "grapple select fifth tag" },
    },
  },
}

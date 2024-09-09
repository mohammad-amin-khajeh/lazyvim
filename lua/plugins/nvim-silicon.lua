return {
  {
    "michaelrommel/nvim-silicon",
    cmd = "Silicon",
    main = "nvim-silicon",
    vim.keymap.set("v", "<leader>sc", ":Silicon<cr>", { desc = "take a screenshot" }),

    opts = {
      font = "CaskaydiaCove NF=32",
      theme = "OneHalfLight",
      background = "#fdd",
      pad_horiz = 100,
      pad_vert = 130,
      no_line_number = true,
      gobble = true,
      shadow_blur_radius = 20,
      language = function()
        return vim.bo.filetype
      end,
      output = function()
        local home = os.getenv("HOME")
        return home
          .. "/Pictures/Code/"
          .. vim.fn.expand("%:p:t")
          .. " "
          .. os.date("!%Y-%m-%dT%H-%M-%S")
          .. "_code.png"
      end,
    },
  },
}

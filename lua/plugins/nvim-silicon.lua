return {
  {
    "michaelrommel/nvim-silicon",
    cmd = "Silicon",
    main = "nvim-silicon",
    vim.keymap.set("v", "<leader>sc", ":Silicon<cr>", { desc = "take a screenshot" }),

    opts = {
      font = "CaskaydiaCove NF=32",
      theme = "Dracula",
      pad_horiz = 300,
      pad_vert = 250,
      no_line_number = true,
      gobble = true,
      language = function()
        return vim.bo.filetype
      end,
      window_title = function()
        return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
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

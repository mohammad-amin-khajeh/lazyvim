return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },

      servers = {
        html = { filetypes = { "html", "htmldjango", "templ" } },
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = function()
      -- "reuse_win = true" disables snacks' zen mode so I'm disabling that
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = {
        "gd",
        function()
          require("telescope.builtin").lsp_definitions({ reuse_win = false })
        end,
        desc = "Goto Definition",
        has = "definition",
      }

      keys[#keys + 1] = {
        "gI",
        function()
          require("telescope.builtin").lsp_implementations({ reuse_win = false })
        end,
        desc = "Goto Implementation",
      }
      keys[#keys + 1] = {
        "gy",
        function()
          require("telescope.builtin").lsp_type_definitions({ reuse_win = false })
        end,
        desc = "Goto T[y]pe Definition",
      }
    end,
  },
}

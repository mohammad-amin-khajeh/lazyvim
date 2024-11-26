return {
  {
    "Saghen/blink.cmp",

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = "enter",
        ["<C-e>"] = { "hide", "fallback" },
      },
      windows = {
        documentation = {
          auto_show_delay_ms = 200,
        },
      },
    },
  },
}

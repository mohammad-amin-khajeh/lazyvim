return {

  -- neorg for note-taking
  {
    "nvim-neorg/neorg",
    version = "*",
    ft = "norg",
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.export"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                english = "~/Documents/notes/english",
                code = "~/Documents/code",
              },
              default_workspace = "code",
            },
          },
        },
      })
    end,
  },
}

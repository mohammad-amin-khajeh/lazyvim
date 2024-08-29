local CONFIG_DIR = os.getenv("XDG_CONFIG_HOME")
return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", CONFIG_DIR .. "/nvim/lua/config/.markdownlint-cli2.yaml", "--" },
        },
      },
    },
  },
}

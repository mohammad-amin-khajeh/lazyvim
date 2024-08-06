return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      c = { "clang-format" },
      css = { "biome" },
      html = { "biome" },
      javascript = { "biome" },
      json = { "biome" },
      lua = { "stylua" },
      python = { "ruff_format", "ruff_fix", "ruff_organize_imports" },
      sh = { "shellharden", "shfmt" },
      typescript = { "biome" },
      typescriptreact = { "biome" },
      zsh = { "shellharden", "shfmt" },
    },
  },
}

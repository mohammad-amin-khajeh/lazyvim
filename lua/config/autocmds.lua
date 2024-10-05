-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Copy the photo from clipboard to the current file's directory
vim.api.nvim_create_user_command("ZolaPic", function()
  local filename = vim.fn.input({ prompt = "enter the filename without an extension: " })
  local cwd = vim.fn.expand("%:p:h")

  os.execute("xclip -sel c -t image/png -o > " .. cwd .. "/" .. filename .. ".png")
end, {})

-- fill in frontmatter boilerplate for pages
vim.api.nvim_create_user_command("ZolaFrontmatter", function()
  local current_date = os.date("%Y-%m-%d")
  vim.api.nvim_buf_set_lines(0, 0, 0, false, {
    "+++",
    'title = ""',
    'description = ""',
    "date = " .. '"' .. current_date .. '"',
    "[extra]",
    "[taxonomies]",
    "tags = []",
    "categories = []",
    "+++",
  })
end, {})

-- disable auto formatting on save for c header files, can be enabled with <leader>uf
vim.api.nvim_create_autocmd({ "BufNewFile", "bufRead" }, {
  pattern = { "*.h" },
  callback = function()
    vim.b.autoformat = false
  end,
})

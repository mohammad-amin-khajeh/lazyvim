-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- scroll off value
vim.opt.scrolloff = 12

-- disable swap file
vim.opt.swapfile = false

-- line wrapping
vim.opt.wrap = true

-- don't show the last command
vim.opt.showcmd = false

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wildignore:append({ "*/node_modules/*" })

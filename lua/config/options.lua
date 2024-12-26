-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- scroll off value
vim.opt.scrolloff = 12

-- line wrapping
vim.opt.wrap = true

-- don't show the last command
vim.opt.showcmd = false

-- disable snacks animations
vim.g.snacks_animate = false

-- Fix snacks terminal changing cursor's position
vim.opt.splitkeep = "cursor"

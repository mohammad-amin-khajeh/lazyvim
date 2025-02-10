-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- center the screen after going half page up/down
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- append the next line to the current line but don't change cursor position
map("n", "J", function()
  local pos = vim.fn.getcurpos()
  vim.cmd("norm! J")
  vim.fn.setpos(".", pos)
end)

-- center the screen after going to the next/prev search result
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- go to the first non-whitespace character with 0
map("n", "0", "_")
map("n", "_", "0")
map("n", "-", "0")

-- make current file execultable
map("n", "<leader>fx", '<CMD>!chmod +x "%"<CR>', { desc = "make file execultable" })

-- some emacs bindings in insert mode
map("i", "<C-a>", "<C-o>^")
map("i", "<C-e>", "<C-o>$")

-- save like a normal text editor
map("i", "<C-s>", "<CMD>w<CR>")

-- search forward for the word under the cursor
map("n", "<a-g>", "*zz")

-- search backwards for the word under the cursor
map("n", "<a-f>", "#zz")

-- lazy
vim.keymap.del("n", "<leader>l")
map("n", "<leader>lu", "<CMD>Lazy update<CR>", { desc = "lazy update plugins" })
map("n", "<leader>ls", "<CMD>Lazy sync<CR>", { desc = "lazy sync plugins" })
map("n", "<leader>li", "<CMD>Lazy install<CR>", { desc = "lazy install missing plugins" })
map("n", "<leader>lp", "<CMD>Lazy profile<CR>", { desc = "lazy view profile" })
map("n", "<leader>lx", "<CMD>Lazy clean<CR>", { desc = "lazy clean unneeded plugins" })
map("n", "<leader>ll", "<CMD>Lazy log<CR>", { desc = "lazy view log" })
map("n", "<leader>lh", "<CMD>Lazy home<CR>", { desc = "lazy open" })

-- use arrow keys for buffer navgiation
map("n", "<S-left>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
map("n", "<S-right>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })

-- close buffers easier
map("n", "<a-x>", "<cmd>bdelete<cr>")

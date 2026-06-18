-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local del = vim.keymap.del

-- disabled keymaps
del("n", "<leader>l")

map("n", "<leader>mk", "<cmd>make<CR>", { desc = "run make" })
map({ "n", "x" }, ";", ":")
map({ "n", "x" }, ":", ";")

-- append the next line to the current line but don't change cursor position
map("n", "J", function()
  local pos = vim.fn.getcurpos()
  vim.cmd("norm! J")
  vim.fn.setpos(".", pos)
end)

-- center the screen after various motions
map("n", "n", "nzz")
map("n", "N", "Nzz")
map("n", "<C-o>", "<C-o>zz")
map("n", "<C-i>", "<C-i>zz")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- go to the first non-whitespace character with 0
map("n", "0", "_")
map("n", "-", "0")

-- some emacs bindings in insert mode
map("i", "<C-a>", "<C-o>^")
map("i", "<C-e>", "<C-o>$")

map("n", "<a-g>", "*zz", { desc = "search forward for the word under cursor" })
map("n", "<a-f>", "#zz", { desc = "search backward for the word under cursor" })
map("n", "#", "%")
map("n", "%", "%:echo 'use # instead!!!'<CR>")

-- lazy
map("n", "<leader>lu", "<CMD>Lazy update<CR>", { desc = "lazy update plugins" })
map("n", "<leader>ls", "<CMD>Lazy sync<CR>", { desc = "lazy sync plugins" })
map("n", "<leader>li", "<CMD>Lazy install<CR>", { desc = "lazy install missing plugins" })
map("n", "<leader>lp", "<CMD>Lazy profile<CR>", { desc = "lazy view profile" })
map("n", "<leader>lx", "<CMD>Lazy clean<CR>", { desc = "lazy clean unneeded plugins" })
map("n", "<leader>ll", "<CMD>Lazy log<CR>", { desc = "lazy view log" })
map("n", "<leader>lh", "<CMD>Lazy home<CR>", { desc = "lazy open" })

map("n", "<leader>qr", "<CMD>restart<CR>", { desc = "restart neovim" })

if os.getenv("TMUX") then
  map("n", "<leader>lg", function()
    local cwd = vim.fn.expand("%:p:h")
    vim.system({ "tmux", "neww", "-c", cwd, "lazygit" }, { text = true }, function(out)
      if out.code ~= 0 then
        vim.notify("Tmux error: " .. (out.stderr or "unknown error"), vim.log.levels.ERROR)
      end
    end)
  end, { desc = "open lazygit in a new tmux window" })
end

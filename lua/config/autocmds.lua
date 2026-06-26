-- Autocmds are automatically loaded on the VeryLazy event

-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local my_group = vim.api.nvim_create_augroup("my_group", { clear = true })

vim.api.nvim_create_autocmd("BufEnter", {
  group = my_group,
  pattern = "*.md",
  callback = function()
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
        "toc = false",
        "[taxonomies]",
        "tags = []",
        "categories = []",
        "+++",
      })
    end, {})
  end,
})

-- enable sxhkdrc syntax highlighting
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  group = my_group,
  pattern = "*sxhkdrc",
  callback = function()
    vim.bo.ft = "sxhkdrc"
  end,
})

-- disable the annoying pyright lsp indicator
vim.api.nvim_create_autocmd("LspAttach", {
  group = my_group,
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    -- Check if the client is a Python LSP (like pyright or basedpyright)
    if client and (client.config.name == "basedpyright" or client.config.name == "pyright") then
      client.handlers["$/progress"] = function() end
    end
  end,
})

-- implement quickrun in neovim
function Quickrun(cmd_generator, pattern)
  vim.api.nvim_create_autocmd("BufEnter", {
    group = my_group,
    pattern = pattern,
    callback = function()
      if os.getenv("TMUX") then
        vim.keymap.set("n", "<leader>cq", function()
          local cmd = cmd_generator()
          if not cmd then
            return
          end

          vim.system({ "tmux", "splitw", "-h", "-l", "40%", "-d", cmd }, { text = true }, function(out)
            if out.code ~= 0 then
              vim.notify("Tmux error: " .. (out.stderr or "unknown error"), vim.log.levels.ERROR)
            end
          end)
        end, { desc = "quickrun file", buffer = 0 })
      end
    end,
  })
end

Quickrun(function()
  local buf_path = vim.uv.fs_realpath(vim.fn.expand("%:p"))
  return string.format('echo "%s" | entr -ca python "%s"', buf_path, buf_path)
end, { "*.py,*.python" })

Quickrun(function()
  local buf_path = vim.uv.fs_realpath(vim.fn.expand("%:p"))
  return string.format(
    'echo "%s" | entr -cas "g++ -std=c++17 -O0 -Wall \'%s\' -o /tmp/compiled && /tmp/compiled"',
    buf_path,
    buf_path
  )
end, "*.cpp")

Quickrun(function()
  local buf_path = vim.uv.fs_realpath(vim.fn.expand("%:p"))
  local project_path = vim.uv.fs_realpath(vim.fn.expand("%:p:h"))
  return string.format('echo "%s" | entr -cas "cd \'%s\' && cargo run"', buf_path, project_path)
end, "*.rs")

vim.api.nvim_create_autocmd("BufEnter", {
  group = my_group,
  callback = function(args)
    local buf_path = vim.api.nvim_buf_get_name(args.buf)
    local scratch_lazy = vim.fn.expand("~/.local/share/lazyvim/scratch/")
    local scratch_nvim = vim.fn.expand("~/.local/share/nvim/scratch/")
    if buf_path:find("^" .. scratch_lazy) or buf_path:find("^" .. scratch_nvim) then
      vim.diagnostic.enable(false, { bufnr = args.buf })
    end
  end,
})

-- show diagnostics messages only for the current line
vim.api.nvim_create_autocmd("LspAttach", {
  group = my_group,
  callback = function()
    vim.diagnostic.config({ virtual_text = { current_line = true }, virtual_lines = false })
  end,
})

-- disable autoformat in suckless projects
---@diagnostic disable-next-line: assign-type-mismatch
vim.api.nvim_create_autocmd({ "bufRead" }, {
  group = my_group,
  pattern = {
    vim.fn.expand("~/.local/src") .. "/**",
    vim.fn.expand("~/.dotfiles/suckless") .. "/**",
  },

  callback = function()
    vim.b.autoformat = false
  end,
})

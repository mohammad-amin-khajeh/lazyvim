return {
  "jake-stewart/multicursor.nvim",
  keys = {
    { "<c-q>", mode = { "n", "x" }, desc = "Toggle cursor" },
    { "<leader>ma", mode = { "n", "x" }, desc = "Match add cursor" },
    { "<leader>ms", mode = { "n", "x" }, desc = "Match skip cursor" },
    { "<leader>mA", mode = { "n", "x" }, desc = "Match add cursor (reverse)" },
    { "<leader>mS", mode = { "n", "x" }, desc = "Match skip cursor (reverse)" },
    { "<C-p>", mode = { "n", "x" }, desc = "Previous cursor" },
    { "<C-n>", mode = { "n", "x" }, desc = "Next cursor" },
    { "<leader>mx", mode = { "n", "x" }, desc = "Delete cursor" },
    { "<leader>mo", mode = { "n", "x" }, desc = "Multicursor operator" },
    { "<leader>mm", mode = { "n", "x" }, desc = "Match add all" },
    { "<leader>ml", mode = { "n", "x" }, desc = "Align cursors" },
    { "<leader>mr", mode = "x", desc = "Split cursors" },
  },

  config = function()
    local mc = require("multicursor-nvim")
    mc.setup()

    local map = vim.keymap.set

    -- Add or skip adding a new cursor by matching word/selection
    map({ "n", "x" }, "<leader>ma", function()
      mc.matchAddCursor(1)
    end, { desc = "match add cursor" })

    map({ "n", "x" }, "<leader>ms", function()
      mc.matchSkipCursor(1)
    end, { desc = "match skip cursor" })

    map({ "n", "x" }, "<leader>mA", function()
      mc.matchAddCursor(-1)
    end, { desc = "match add cursor (reverse)" })

    map({ "n", "x" }, "<leader>mS", function()
      mc.matchSkipCursor(-1)
    end, { desc = "match skip cursor (reverse)" })

    map({ "n", "x" }, "<leader>mm", mc.matchAllAddCursors, { desc = "match add all cursors" })
    map({ "n", "x" }, "<leader>mo", mc.operator, { desc = "Multicursor operator" })
    map({ "n", "x" }, "<c-q>", mc.toggleCursor, { desc = "toggle cursor" })
    map({ "n", "x" }, "<leader>ml", mc.alignCursors, { desc = "Align cursors" })
    map("x", "<leader>mr", mc.splitCursors, { desc = "Split cursors" })

    -- Mappings defined in a keymap layer only apply when there are
    -- multiple cursors. This lets you have overlapping mappings.
    mc.addKeymapLayer(function(layerSet)
      -- Select a different cursor as the main one.
      layerSet({ "n", "x" }, "<C-p>", mc.prevCursor, { desc = "previous cursor" })
      layerSet({ "n", "x" }, "<C-n>", mc.nextCursor, { desc = "next cursor" })

      -- Delete the main cursor.
      layerSet({ "n", "x" }, "<leader>mx", mc.deleteCursor, { desc = "delete cursor" })

      -- Enable and clear cursors using escape.
      layerSet("n", "<esc>", function()
        if not mc.cursorsEnabled() then
          mc.enableCursors()
        else
          mc.clearCursors()
        end
      end, { desc = "enable/clear cursors" })
    end)

    -- Customize how cursors look.
    local hl = vim.api.nvim_set_hl
    hl(0, "MultiCursorCursor", { reverse = true })
    hl(0, "MultiCursorVisual", { link = "Visual" })
    hl(0, "MultiCursorSign", { link = "SignColumn" })
    hl(0, "MultiCursorMatchPreview", { link = "Search" })
    hl(0, "MultiCursorDisabledCursor", { reverse = true })
    hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
    hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
  end,
}

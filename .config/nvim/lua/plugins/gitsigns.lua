require("gitsigns").setup({
  on_attach = function(bufnr)
    local gitsigns = require("gitsigns")

    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
    end

    map("n", "]h", function()
      gitsigns.nav_hunk("next")
    end, "Next Git hunk")

    map("n", "[h", function()
      gitsigns.nav_hunk("prev")
    end, "Previous Git hunk")

    map("n", "<leader>hp", gitsigns.preview_hunk, "Preview hunk")
    map("n", "<leader>hs", gitsigns.stage_hunk, "Stage hunk")
    map("n", "<leader>hr", gitsigns.reset_hunk, "Reset hunk")
    map("n", "<leader>hb", gitsigns.blame_line, "Git blame")
  end,
})

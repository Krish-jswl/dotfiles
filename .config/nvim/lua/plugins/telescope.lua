local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
  defaults = {
    -- rounded borders (main, prompt, results, preview)
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
  },
})

-- Transparent telescope
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    local groups = {
      "TelescopeNormal",
      "TelescopeBorder",
      "TelescopeTitle",
      "TelescopePromptNormal",
      "TelescopePromptBorder",
      "TelescopePromptTitle",
      "TelescopePromptPrefix",
      "TelescopePromptCounter",
      "TelescopeResultsNormal",
      "TelescopeResultsBorder",
      "TelescopeResultsTitle",
      "TelescopePreviewNormal",
      "TelescopePreviewBorder",
      "TelescopePreviewTitle",
    }
    for _, group in ipairs(groups) do
      vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
  end,
})
-- run once immediately too, in case colorscheme already loaded before this file
vim.api.nvim_exec_autocmds("ColorScheme", {})

local map = function(lhs, rhs, desc)
  vim.keymap.set("n", lhs, rhs, { desc = desc })
end

map("<leader>ff", builtin.find_files, "Find files")
map("<leader>fg", builtin.live_grep, "Live grep")
map("<leader>fb", builtin.buffers, "Buffers")
map("<leader>fh", builtin.help_tags, "Help")

map("<leader>fr", builtin.lsp_references, "LSP references")
map("<leader>fs", builtin.lsp_document_symbols, "Document symbols")
map("<leader>fd", builtin.diagnostics, "Diagnostics")

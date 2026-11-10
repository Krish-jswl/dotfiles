vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "tairiki",
  callback = function()
    for _, group in ipairs({
      "Normal", "NormalNC", "NormalFloat", "SignColumn",
      "EndOfBuffer", "LineNr", "FoldColumn",
    }) do
      local hl = vim.api.nvim_get_hl(0, { name = group, link = false })
      hl.bg, hl.ctermbg = nil, nil
      vim.api.nvim_set_hl(0, group, hl)
    end
  end,
})

vim.cmd.colorscheme("tairiki")

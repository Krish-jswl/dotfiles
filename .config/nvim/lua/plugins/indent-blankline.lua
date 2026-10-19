require("ibl").setup({
  enabled = false,

  indent = {
    char = "│",
  },

  scope = {
    enabled = true,
    show_start = false,
    show_end = false,
  },
})

vim.keymap.set("n", "<leader>ti", "<cmd>IBLToggle<CR>", { desc = "Toggle indent guides" })

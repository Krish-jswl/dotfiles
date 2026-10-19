require("nvim-tree").setup({
  view = {
    width = 30,
    side = "right",
  },

  renderer = {
    group_empty = true,

    icons = {
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = true,
      },
    },
  },

  filters = {
    dotfiles = false,
  },
})

vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

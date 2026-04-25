return {
  {
    "cormacrelf/vim-colors-github", -- fallback optional
  },

  {
    "chriskempson/base16-vim",
    lazy = false,
    priority = 1000,
    config = function()
      -- enable true color
      vim.opt.termguicolors = true

      -- set colorscheme
      vim.cmd.colorscheme("base16-tomorrow-night")

      -- make background transparent
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
      vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
    end,
  },
}

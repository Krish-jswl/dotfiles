vim.pack.add({
  { src = "https://github.com/rose-pine/neovim" },

  { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },

  { src = "https://github.com/neovim/nvim-lspconfig" },

  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1") },

  { src = "https://github.com/L3MON4D3/LuaSnip" },
  { src = "https://github.com/rafamadriz/friendly-snippets" },

  { src = "https://github.com/stevearc/conform.nvim" },

  { src = "https://github.com/nvim-tree/nvim-tree.lua" },

  { src = "https://github.com/nvim-lualine/lualine.nvim" },

  { src = "https://github.com/lewis6991/gitsigns.nvim" },

  { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },

  { src = "https://github.com/catgoose/nvim-colorizer.lua" },

  { src = "https://github.com/echasnovski/mini.nvim" },

  -- telescope
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
})

require("plugins.colorscheme")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.completion")
require("plugins.snippets")
require("plugins.conform")
require("plugins.mini")
require("plugins.telescope")
require("plugins.nvim-tree")
require("plugins.lualine")
require("plugins.gitsigns")
require("plugins.indent-blankline")
require("plugins.colorizer")
